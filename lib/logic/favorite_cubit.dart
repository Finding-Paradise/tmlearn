import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tmlearn/hive_data/data.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  SharedPreferences preferences;
  FavoriteCubit(this.preferences) : super(FavoriteInitial(const []));

  get_favorites() {
    List<String> favs7Str = preferences.getStringList('favs7') ?? [];
    var newLs = favs7Str
        .map(
          (e) => Phrases.fromJson(jsonDecode(e)),
        )
        .toList();

    emit(newLs.isNotEmpty
        ? FavoriteLoaded([...newLs])
        : FavoriteEmpty(const []));
  }

  bool is_favorite(Phrases phrase) {
    for (var element in state.phrases) {
      if (element.nameRus == phrase.nameRus) {
        return true;
      }
    }
    return false;
  }

  add_favorite(Phrases phrase) {
    preferences.setStringList('favs7', <String>[
      ...state.phrases.map((e) => jsonEncode(e.toJson())),
      jsonEncode(phrase.toJson())
    ]);
    emit(FavoriteLoaded([...state.phrases, phrase]));
  }

  delete_favorite(Phrases phrase) {
    state.phrases.removeWhere((element) => element == phrase);
    List<Phrases> newLs = List.from(state.phrases);
    preferences.setStringList('favs7', <String>[
      ...newLs.map((e) => jsonEncode(e.toJson())),
    ]);
    emit(FavoriteInitial(const []));
    if (newLs.isEmpty) {
      emit(FavoriteEmpty(const []));
    } else {
      emit(FavoriteLoaded(newLs));
    }
  }
}

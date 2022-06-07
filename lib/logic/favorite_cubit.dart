import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tmlearn/hive_data/common_phrases_data/common_phrases.dart';
import 'package:tmlearn/hive_data/data.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  SharedPreferences preferences;
  FavoriteCubit(this.preferences) : super(FavoriteInitial([]));

  get_favorites() {
    List<String> favs7_str = preferences.getStringList('favs7') ?? [];
    var new_ls = favs7_str
        .map(
          (e) => Phrases.fromJson(jsonDecode(e)),
        )
        .toList();

    emit(new_ls.isNotEmpty ? FavoriteLoaded([...new_ls]) : FavoriteEmpty([]));
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
    List<Phrases> new_ls = List.from(state.phrases);
    preferences.setStringList('favs7', <String>[
      ...new_ls.map((e) => jsonEncode(e.toJson())),
    ]);
    emit(FavoriteInitial([]));
    if (new_ls.isEmpty) {
      emit(FavoriteEmpty([]));
    } else {
      emit(FavoriteLoaded(new_ls));
    }
  }
}

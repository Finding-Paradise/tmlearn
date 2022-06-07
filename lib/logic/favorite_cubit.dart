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
    List<String> favs2_str = preferences.getStringList('favs2') ?? [];
    print(favs2_str);
    var new_ls = favs2_str
        .map(
          (e) => Phrases.fromJson(jsonDecode(e)),
        )
        .toList();

    emit(new_ls.isNotEmpty ? FavoriteLoaded([...new_ls]) : FavoriteEmpty([]));
  }

  bool is_favorite(Phrases phrase) {
    return state.phrases.contains(phrase);
  }

  add_favorite(Phrases phrase) {
    preferences.setStringList('favs2', <String>[
      ...state.phrases.map((e) => jsonEncode(e.toJson())),
      jsonEncode(phrase.toJson())
    ]);
    print("Inserting");
    log(state.phrases.toString());
    emit(FavoriteLoaded([...state.phrases, phrase]));
  }

  delete_favorite(Phrases phrase) {
    state.phrases.removeWhere((element) => element == phrase);
    List<Phrases> new_ls = List.from(state.phrases);
    preferences.setStringList('favs2', <String>[
      ...new_ls.map((e) => jsonEncode(e.toJson())),
    ]);
    print(new_ls);
    emit(FavoriteLoaded(new_ls));
  }
}

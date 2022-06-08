import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/hive_data/common_phrases_data/common_phrases.dart';
import 'package:tmlearn/logic/favorite_cubit.dart';
import 'package:tmlearn/widgets/custom_transparent_app_bar.dart';
import 'package:tmlearn/widgets/navigation_drawer.dart';

import '../hive_data/data.dart';
import '../widgets/dictionary_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: const CustomTransparentAppBar(
            titleRus: 'Избранные\n', titleTurk: 'Halananlar'),
        endDrawer: const NavigationDrawerWidget(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: BlocBuilder<FavoriteCubit, FavoriteState>(
              builder: (context, state) {
                if (state is FavoriteEmpty) {
                  return const Center(
                    child: const Text(
                      "Пусто",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  );
                }
                List<Phrases> ph = state.phrases;
                return ListView.builder(
                  itemCount: ph.length,
                  itemBuilder: (BuildContext context, int index) =>
                      DictionaryCard(
                    name: ph[index].nameRus,
                    cardType: CardType.favorite,
                    p: ph[index],
                    onCardTap: () {
                      print("tap");
                    },
                    onIconTap: () {
                      BlocProvider.of<FavoriteCubit>(context)
                          .delete_favorite(ph[index]);
                    },
                  ),
                );
              },
            ),
          ),
        ));
  }
}

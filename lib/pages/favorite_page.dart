import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/custom_transparent_app_bar.dart';
import 'package:tmlearn/widgets/navigation_drawer.dart';

import '../widgets/dictionary_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191034),
      appBar: const CustomTransparentAppBar(titleRus: 'Избранные\n', titleTurk: 'Halananlar'),
      endDrawer: const NavigationDrawerWidget(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) => DictionaryCard(
              name: "Школа",
              cardType: CardType.favorite,
              onCardTap: () {},
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/dictionary_card.dart';
import '../widgets/transparent_app_bar.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191034),
      appBar: const TransparentAppBar(title: "Избранные"),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) => DictionaryCard(
            name: "Школа",
            cardType: CardType.Favorite,
            onCardTap: () {},
          ),
        ),
      ),
    );
  }
}

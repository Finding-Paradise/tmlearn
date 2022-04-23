import 'package:flutter/material.dart';

import '../widgets/custom_transparent_app_bar.dart';
import '../widgets/dictionary_card.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191034),
      appBar: const CustomTransparentAppBar(titleRus: 'История\n', titleTurk: 'Geçmiş',),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) => DictionaryCard(
              name: "Школа",
              cardType: CardType.history,
              onCardTap: () {},
            ),
          ),
        ),
      ),
    );
  }
}

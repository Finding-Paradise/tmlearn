import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_nav.dart';

class CommonPhrasesPage extends StatelessWidget {
  const CommonPhrasesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryNavWidget(
      learnPageIndex: 0,
      categoryTitleRus: 'Общие фразы\n',
      categoryTitleTurk: 'Umumy jümleler',
    );
  }
}

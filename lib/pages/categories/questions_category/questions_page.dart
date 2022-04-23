import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_nav.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryNavWidget(
      learnPageIndex: 3,
      categoryTitleRus: 'Вопросы\n',
      categoryTitleTurk: 'Soraglar',
    );
  }
}

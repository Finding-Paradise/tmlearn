import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_learn.dart';

class QuestionsLearnPage extends StatefulWidget {
  const QuestionsLearnPage({Key? key}) : super(key: key);

  @override
  State<QuestionsLearnPage> createState() => _QuestionsLearnPageState();
}

class _QuestionsLearnPageState extends State<QuestionsLearnPage> {
  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryLearnWidget(
      filePath: 'assets/app_sections_data/questions.json',
      categoryTitleRus: 'Вопросы\n',
      categoryTitleTurk: 'Soraglar',
    );
  }
}

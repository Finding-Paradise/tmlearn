import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_learn.dart';

class GreetingLearnPage extends StatefulWidget {
  const GreetingLearnPage({Key? key}) : super(key: key);

  @override
  State<GreetingLearnPage> createState() => _GreetingLearnPageState();
}

class _GreetingLearnPageState extends State<GreetingLearnPage> {
  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryLearnWidget(
      filePath: 'assets/app_sections_data/greetings.json',
      categoryTitleRus: 'Обращение\n',
      categoryTitleTurk: 'Ýüzlenme',
    );
  }
}

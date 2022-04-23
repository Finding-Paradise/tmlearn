import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_learn.dart';

class GreetingLearnPage extends StatefulWidget {
  GreetingLearnPage({Key? key}) : super(key: key);

  @override
  State<GreetingLearnPage> createState() => _GreetingLearnPageState();
}

class _GreetingLearnPageState extends State<GreetingLearnPage> {
  @override
  Widget build(BuildContext context) {
    return SpecificCategoryLearnWidget(
      filePath: 'assets/app_sections_data/greetings.json',
      categoryTitleRus: 'Обращение\n',
      categoryTitleTurk: 'Ýüzlenme',
    );
  }
}

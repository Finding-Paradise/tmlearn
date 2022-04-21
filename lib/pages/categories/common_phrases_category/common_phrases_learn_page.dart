import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_learn.dart';

class CommonPhrasesLearn extends StatefulWidget {
  CommonPhrasesLearn({Key? key}) : super(key: key);

  @override
  State<CommonPhrasesLearn> createState() => _CommonPhrasesLearnState();
}

class _CommonPhrasesLearnState extends State<CommonPhrasesLearn> {
  @override
  Widget build(BuildContext context) {
    return SpecificCategoryLearnWidget(
      filePath: 'assets/app_sections_data/common_phrases.json',
      categoryTitleRus: 'Общие фразы\n',
      categoryTitleTurk: 'Umumy jümleler',
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_learn.dart';

import '../../../utils.dart';

class CommonPhrasesLearnPage extends StatefulWidget {
  const CommonPhrasesLearnPage({Key? key}) : super(key: key);

  @override
  State<CommonPhrasesLearnPage> createState() => _CommonPhrasesLearnPageState();
}

class _CommonPhrasesLearnPageState extends State<CommonPhrasesLearnPage> {
  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryLearnWidget(
      filePath: 'assets/app_sections_data/common_phrases.json',
      categoryTitleRus: 'Общие фразы\n',
      categoryTitleTurk: 'Umumy jümleler',
      categoryName: CategoryNames.commonPhrases,
    );
  }
}

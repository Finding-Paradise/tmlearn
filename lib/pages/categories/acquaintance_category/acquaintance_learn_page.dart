import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_learn.dart';

class AcquaintanceLearnPage extends StatefulWidget {
  const AcquaintanceLearnPage({Key? key}) : super(key: key);

  @override
  State<AcquaintanceLearnPage> createState() => _AcquaintanceLearnPageState();
}

class _AcquaintanceLearnPageState extends State<AcquaintanceLearnPage> {
  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryLearnWidget(
      filePath: 'assets/app_sections_data/acquaintance.json',
      categoryTitleRus: 'Знакомство\n',
      categoryTitleTurk: 'Tanyşlyk',
    );
  }
}

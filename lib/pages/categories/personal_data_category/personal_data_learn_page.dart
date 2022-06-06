import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_learn.dart';

import '../../../utils/utils.dart';

class PersonalDataLearnPage extends StatefulWidget {
  const PersonalDataLearnPage({Key? key}) : super(key: key);

  @override
  State<PersonalDataLearnPage> createState() => _PersonalDataLearnPageState();
}

class _PersonalDataLearnPageState extends State<PersonalDataLearnPage> {
  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryLearnWidget(
      filePath: 'assets/app_sections_data/personal_data.json',
      categoryTitleRus: 'Анкетные данные\n',
      categoryTitleTurk: 'Anket maglumatlary',
      categoryName: CategoryNames.personal,
    );
  }
}

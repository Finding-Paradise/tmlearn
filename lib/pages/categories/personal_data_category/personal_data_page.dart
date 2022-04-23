import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_nav.dart';

class PersonalDataPage extends StatelessWidget {
  const PersonalDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryNavWidget(
      learnPageIndex: 4,
      categoryTitleRus: 'Анкетные данные\n',
      categoryTitleTurk: 'Anket maglumatlary',
    );
  }
}

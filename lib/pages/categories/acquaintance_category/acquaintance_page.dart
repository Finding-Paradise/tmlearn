import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_nav.dart';

class AcquaintancePage extends StatelessWidget {
  const AcquaintancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryNavWidget(
      learnPageIndex: 2,
      categoryTitleRus: 'Знакомство\n',
      categoryTitleTurk: 'Tanyşlyk',
    );
  }
}


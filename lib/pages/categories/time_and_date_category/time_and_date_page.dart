import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_nav.dart';

class TimeAndDatePage extends StatelessWidget {
  const TimeAndDatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryNavWidget(
      learnPageIndex: 6,
      categoryTitleRus: 'Время, даты\n',
      categoryTitleTurk: 'Wagt, seneler',
    );
  }
}

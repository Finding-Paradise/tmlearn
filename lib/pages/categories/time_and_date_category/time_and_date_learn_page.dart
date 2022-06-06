import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_learn.dart';

import '../../../utils/utils.dart';

class TimeAndDateLearnPage extends StatefulWidget {
  const TimeAndDateLearnPage({Key? key}) : super(key: key);

  @override
  State<TimeAndDateLearnPage> createState() => _TimeAndDateLearnPageState();
}

class _TimeAndDateLearnPageState extends State<TimeAndDateLearnPage> {
  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryLearnWidget(
      filePath: 'assets/app_sections_data/time_and_date.json',
      categoryTitleRus: 'Время, даты\n',
      categoryTitleTurk: 'Wagt, seneler',
      categoryName: CategoryNames.timeAndDate,
    );
  }
}

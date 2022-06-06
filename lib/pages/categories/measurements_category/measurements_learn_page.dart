import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_learn.dart';

import '../../../utils/utils.dart';

class MeasurementsLearnPage extends StatefulWidget {
  const MeasurementsLearnPage({Key? key}) : super(key: key);

  @override
  State<MeasurementsLearnPage> createState() => _MeasurementsLearnPageState();
}

class _MeasurementsLearnPageState extends State<MeasurementsLearnPage> {
  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryLearnWidget(
      filePath: 'assets/app_sections_data/measurements_and_directions.json',
      categoryTitleRus: 'Форма, размер\n',
      categoryTitleTurk: 'Görnüş, ölçeg',
      categoryName: CategoryNames.measurements,
    );
  }
}

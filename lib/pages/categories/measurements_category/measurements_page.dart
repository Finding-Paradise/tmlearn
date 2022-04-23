import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_nav.dart';

class MeasurementsPage extends StatelessWidget {
  const MeasurementsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryNavWidget(
      learnPageIndex: 5,
      categoryTitleRus: 'Форма, размер\n',
      categoryTitleTurk: 'Görnüş, ölçeg',
    );
  }
}

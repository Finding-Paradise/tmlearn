import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_nav.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryNavWidget(
      learnPageIndex: 1,
      categoryTitleRus: 'Обращение\n',
      categoryTitleTurk: 'Ýüzlenme',
    );
  }
}

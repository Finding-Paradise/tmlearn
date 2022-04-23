import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_nav.dart';

class EconomicTermsPage extends StatelessWidget {
  const EconomicTermsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryNavWidget(
      learnPageIndex: 7,
      categoryTitleRus: 'Экономические термины\n',
      categoryTitleTurk: 'Ykdysady şertler',
    );
  }
}

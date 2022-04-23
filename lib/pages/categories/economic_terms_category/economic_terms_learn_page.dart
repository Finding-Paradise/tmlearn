import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/specific_category_learn.dart';

class EconomicTermsLearnPage extends StatefulWidget {
  const EconomicTermsLearnPage({Key? key}) : super(key: key);

  @override
  State<EconomicTermsLearnPage> createState() => _EconomicTermsLearnState();
}

class _EconomicTermsLearnState extends State<EconomicTermsLearnPage> {
  @override
  Widget build(BuildContext context) {
    return const SpecificCategoryLearnWidget(
      filePath: 'assets/app_sections_data/economic_terms.json',
      categoryTitleRus: 'Экономические термины\n',
      categoryTitleTurk: 'Ykdysady şertler',
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/widgets/custom_transparent_app_bar.dart';
import 'dart:convert';

import 'package:tmlearn/widgets/icons_row.dart';
import 'package:tmlearn/widgets/navigation_drawer.dart';

import '../hive_data/common_phrases_data/common_phrases.dart';
import '../hive_data/economic_terms_data/economic_terms.dart';
import '../hive_data/greetings_data/greetings.dart';
import '../hive_data/measurements_data/measurements.dart';
import '../hive_data/personal_data/personal.dart';
import '../hive_data/questions_data/questions.dart';
import '../hive_data/time_and_date_data/time_and_date.dart';
import '../utils.dart';
import '../hive_data/acquaintance_data/acquaintance.dart';

class SpecificCategoryLearnWidget extends StatefulWidget {
  final String? categoryTitleRus, categoryTitleTurk;
  final String filePath;
  final CategoryNames categoryName;

  const SpecificCategoryLearnWidget({
    Key? key,
    required this.filePath,
    required this.categoryTitleRus,
    required this.categoryTitleTurk,
    required this.categoryName,
  }) : super(key: key);

  @override
  State<SpecificCategoryLearnWidget> createState() =>
      _SpecificCategoryLearnWidgetState();
}

class _SpecificCategoryLearnWidgetState
    extends State<SpecificCategoryLearnWidget> {
  @override
  void initState() {
    super.initState();
    readJson();
  }

  List _items = [];

  Future<void> readJson() async {
    final response = await rootBundle.loadString(widget.filePath);
    final data = await jsonDecode(response);

    switch (widget.categoryName) {
      case CategoryNames.acquaintance:
        Box _acquaintanceBox = Hive.box<Acquaintance>(BoxName.acquaintanceBox);
        if (_acquaintanceBox.isEmpty) {
          for (var item in data['items']) {
            _acquaintanceBox.add(Acquaintance.fromJson(item));
          }
          setState(() {
            _items = _acquaintanceBox.values.toList();
          });
        }
        return;
      case CategoryNames.commonPhrases:
        Box _commonPhrasesBox =
            Hive.box<CommonPhrases>(BoxName.commonPhrasesBox);
        if (_commonPhrasesBox.isEmpty) {
          for (var item in data['items']) {
            _commonPhrasesBox.add(CommonPhrases.fromJson(item));
          }
          setState(() {
            _items = _commonPhrasesBox.values.toList();
          });
        }
        return;
      case CategoryNames.economicTerms:
        Box _economicTermsBox =
            Hive.box<EconomicTerms>(BoxName.economicTermsBox);
        if (_economicTermsBox.isEmpty) {
          for (var item in data['items']) {
            _economicTermsBox.add(EconomicTerms.fromJson(item));
          }
          setState(() {
            _items = _economicTermsBox.values.toList();
          });
        }
        return;
      case CategoryNames.greetings:
        Box _greetingsBox = Hive.box<Greetings>(BoxName.greetingsBox);
        if (_greetingsBox.isEmpty) {
          for (var item in data['items']) {
            _greetingsBox.add(Greetings.fromJson(item));
          }
          setState(() {
            _items = _greetingsBox.values.toList();
          });
        }
        return;
      case CategoryNames.measurements:
        Box _measurementsBox = Hive.box<Measurements>(BoxName.measurementsBox);
        if (_measurementsBox.isEmpty) {
          for (var item in data['items']) {
            _measurementsBox.add(Measurements.fromJson(item));
          }
          setState(() {
            _items = _measurementsBox.values.toList();
          });
        }
        return;
      case CategoryNames.personal:
        Box _personalBox = Hive.box<Personal>(BoxName.personalBox);
        if (_personalBox.isEmpty) {
          for (var item in data['items']) {
            _personalBox.add(Personal.fromJson(item));
          }
          setState(() {
            _items = _personalBox.values.toList();
          });
        }
        return;
      case CategoryNames.questions:
        Box _questionsBox = Hive.box<Questions>(BoxName.questionsBox);
        if (_questionsBox.isEmpty) {
          for (var item in data['items']) {
            _questionsBox.add(Questions.fromJson(item));
          }
          setState(() {
            _items = _questionsBox.values.toList();
          });
        }
        return;
      case CategoryNames.timeAndDate:
      default:
        Box _timeAndDateBox = Hive.box<TimeAndDate>(BoxName.timeAndDateBox);
        if (_timeAndDateBox.isEmpty) {
          for (var item in data['items']) {
            _timeAndDateBox.add(TimeAndDate.fromJson(item));
          }
          setState(() {
            _items = _timeAndDateBox.values.toList();
          });
        }
        return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomTransparentAppBar(
        titleRus: widget.categoryTitleRus,
        titleTurk: widget.categoryTitleTurk,
      ),
      endDrawer: const NavigationDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
        child: ListView.separated(
          itemCount: _items.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(height: 13.0, color: Colors.transparent,);
          },
          itemBuilder: (BuildContext context, int index) {
            var item = _items[index];
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: TextButton(
                onPressed: null,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Column(
                    children: [
                      Text(
                        item.nameRus,
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 20.0,
                          color: primaryColor,
                        ),
                      ),
                      Text(
                        item.nameTurk,
                        style: const TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      const Divider(
                        height: 10,
                        thickness: 0,
                        color: Colors.transparent,
                      ),
                      IconRow(
                        phrase: item,
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(secondaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}

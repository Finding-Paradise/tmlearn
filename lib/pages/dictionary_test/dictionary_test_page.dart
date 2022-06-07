import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/logic/current_test_cubit.dart';
import 'package:tmlearn/widgets/custom_transparent_app_bar.dart';
import 'package:tmlearn/widgets/navigation_drawer.dart';

import '../../hive_data/data.dart';
import './widgets/option_card.dart';

class DictionaryTestPage extends StatefulWidget {
  DictionaryTestPage({Key? key, required this.index, required this.test_index})
      : super(key: key);
  int index;
  int test_index;

  @override
  State<DictionaryTestPage> createState() => _DictionaryTestPageState();
}

class _DictionaryTestPageState extends State<DictionaryTestPage> {
  final List routeToPage = [
    "assets/app_sections_data/common_phrases.json",
    "assets/app_sections_data/greetings.json",
    "assets/app_sections_data/acquaintance.json",
    "assets/app_sections_data/questions.json",
    "assets/app_sections_data/personal_data.json",
    "assets/app_sections_data/measurements_and_directions.json",
    "assets/app_sections_data/time_and_date.json",
    "assets/app_sections_data/economic_terms.json",
  ];

  var _items = <Map>[];

  Future<void> readJson() async {
    final response = await rootBundle.loadString(routeToPage[widget.index]);
    var data = await jsonDecode(response);
    for (var element in data["test${widget.test_index}"]) {
      _items.add(element);
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  int _correctAnswers = 0;

  int _inCorrectAnswers = 0;

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191034),
      appBar: const CustomTransparentAppBar(
        titleRus: '',
        titleTurk: '',
      ),
      endDrawer: const NavigationDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18) +
            const EdgeInsets.only(top: 15),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: BlocBuilder<CurrentTestCubit, int>(
            builder: (context, state) {
              _correctAnswers =
                  BlocProvider.of<CurrentTestCubit>(context).correct_answers;
              _inCorrectAnswers =
                  BlocProvider.of<CurrentTestCubit>(context).incorrect_answers;
              if (state < 3)
                return IgnorePointer(
                  ignoring: state > 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 19),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.check,
                                size: 32.5,
                                color: backgroundColor,
                              ),
                            ),
                            const SizedBox(width: 14),
                            Text(
                              "$_correctAnswers",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 35,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "$_inCorrectAnswers",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 35,
                              ),
                            ),
                            const SizedBox(width: 14),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.close,
                                size: 32.5,
                                color: backgroundColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 38),
                      Container(
                        width: double.infinity,
                        height: 271.0,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Text(
                              _items[state]["question"],
                              style:
                                  TextStyle(fontSize: 30, color: primaryColor),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.volume_up,
                                color: primaryColor,
                              ),
                              iconSize: 74,
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        ),
                      ),
                      const Divider(height: 50),
                      Expanded(
                        child: ListView.separated(
                          itemCount: _items[state].length - 2,
                          itemBuilder: (context, index) {
                            bool is_Correct =
                                _items[state].entries.toList()[index + 1].key ==
                                    _items[state]["right"];
                            return OptionCard(
                              optionState: OptionState.notChosen,
                              id: index,
                              text: _items[state]
                                  .entries
                                  .toList()[index + 1]
                                  .value,
                              isCorrect: is_Correct,
                              // onTap: (int) {},
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 18),
                        ),
                      ),
                    ],
                  ),
                );
              else {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.check,
                              size: 32.5,
                              color: backgroundColor,
                            ),
                          ),
                          const SizedBox(width: 14),
                          Text(
                            "$_correctAnswers",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 35,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "$_inCorrectAnswers",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 35,
                            ),
                          ),
                          const SizedBox(width: 14),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.close,
                              size: 32.5,
                              color: backgroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 38),
                    Container(
                      width: double.infinity,
                      height: 271.0,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Text(
                            _items.last["question"],
                            style: TextStyle(fontSize: 30, color: primaryColor),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.volume_up,
                              color: primaryColor,
                            ),
                            iconSize: 74,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),
                    ),
                    const Divider(height: 50),
                    Expanded(
                      child: ListView.separated(
                        itemCount: _items.last.length - 2,
                        itemBuilder: (context, index) {
                          bool is_Correct =
                              _items.last.entries.toList()[index + 1].key ==
                                  _items.last["right"];
                          return IgnorePointer(
                            ignoring: true,
                            child: OptionCard(
                              optionState: OptionState.notChosen,
                              id: index,
                              text:
                                  _items.last.entries.toList()[index + 1].value,
                              isCorrect: is_Correct,
                              // onTap: (int) {},
                            ),
                          );
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 18),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}

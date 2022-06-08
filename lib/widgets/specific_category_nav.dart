import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/logic/current_test_cubit.dart';
import 'package:tmlearn/pages/categories/acquaintance_category/acquaintance_learn_page.dart';
import 'package:tmlearn/pages/categories/common_phrases_category/common_phrases_learn_page.dart';
import 'package:tmlearn/pages/categories/economic_terms_category/economic_terms_learn_page.dart';
import 'package:tmlearn/pages/categories/greeting_category/greeting_learn_page.dart';
import 'package:tmlearn/pages/categories/measurements_category/measurements_learn_page.dart';
import 'package:tmlearn/pages/categories/personal_data_category/personal_data_learn_page.dart';
import 'package:tmlearn/pages/categories/questions_category/questions_learn_page.dart';
import 'package:tmlearn/pages/categories/time_and_date_category/time_and_date_learn_page.dart';
import 'package:tmlearn/pages/dictionary_test/dictionary_test_page.dart';
import 'package:tmlearn/widgets/custom_transparent_app_bar.dart';
import 'package:tmlearn/widgets/navigation_drawer.dart';
import 'package:tmlearn/widgets/specific_category_card.dart';

class SpecificCategoryNavWidget extends StatelessWidget {
  const SpecificCategoryNavWidget({
    Key? key,
    this.categoryTitleRus,
    this.categoryTitleTurk,
    required this.learnPageIndex,
  }) : super(key: key);

  final String? categoryTitleRus, categoryTitleTurk;
  final int learnPageIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomTransparentAppBar(
        titleRus: categoryTitleRus,
        titleTurk: categoryTitleTurk,
      ),
      endDrawer: const NavigationDrawerWidget(),
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              SpecificCategoryNavWidgetButtonLearn(
                  buttonIndex: 0, routeToPageIndex: learnPageIndex),
              SpecificCategoryNavWidgetButtonCards(
                buttonIndex: 1,
                learnPageIndex: learnPageIndex,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          const Divider(
            height: 40.0,
            color: Colors.transparent,
          ),
          Row(
            children: [
              SpecificCategoryNavWidgetButtonTest1(
                buttonIndex: 2,
                index: learnPageIndex,
              ),
              SpecificCategoryNavWidgetButtonTest2(
                buttonIndex: 3,
                index: learnPageIndex,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ], mainAxisAlignment: MainAxisAlignment.center),
      ),
      backgroundColor: backgroundColor,
    );
  }
}

class SpecificCategoryNavWidgetButtonLearn
    extends SpecificCategoryNavWidgetFields {
  final int buttonIndex;
  final int routeToPageIndex;
  SpecificCategoryNavWidgetButtonLearn(
      {Key? key, required this.buttonIndex, required this.routeToPageIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              Get.to(routeToPage[routeToPageIndex]);
            },
            icon: SvgPicture.asset(_navPageIcons[buttonIndex]),
            iconSize: 172.0,
          ),
          SpecificCategoryNavWidgetText(
              navItemsRus: _navPageTextEntriesRus[buttonIndex],
              navItemsTurk: _navPageTextEntriesTurk[buttonIndex])
        ],
      ),
      width: 172.0,
    );
  }
}

class SpecificCategoryNavWidgetButtonCards
    extends SpecificCategoryNavWidgetFields {
  SpecificCategoryNavWidgetButtonCards(
      {required this.learnPageIndex, Key? key, required this.buttonIndex})
      : super(key: key);
  final int buttonIndex;
  final int learnPageIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              Get.to(SpecificCategoryCardWidget(
                index: learnPageIndex,
              ));
            },
            icon: SvgPicture.asset(_navPageIcons[buttonIndex]),
            iconSize: 172.0,
          ),
          SpecificCategoryNavWidgetText(
              navItemsRus: _navPageTextEntriesRus[buttonIndex],
              navItemsTurk: _navPageTextEntriesTurk[buttonIndex])
        ],
      ),
      width: 172.0,
    );
  }
}

class SpecificCategoryNavWidgetButtonTest1
    extends SpecificCategoryNavWidgetFields {
  SpecificCategoryNavWidgetButtonTest1(
      {Key? key, required this.buttonIndex, required this.index})
      : super(key: key);
  final int buttonIndex;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              BlocProvider.of<CurrentTestCubit>(context).initial();
              Get.to(DictionaryTestPage(index: index, test_index: 1));
            },
            icon: SvgPicture.asset(_navPageIcons[buttonIndex]),
            iconSize: 172.0,
          ),
          SpecificCategoryNavWidgetText(
              navItemsRus: _navPageTextEntriesRus[buttonIndex],
              navItemsTurk: _navPageTextEntriesTurk[buttonIndex])
        ],
      ),
      width: 172.0,
    );
  }
}

class SpecificCategoryNavWidgetButtonTest2
    extends SpecificCategoryNavWidgetFields {
  SpecificCategoryNavWidgetButtonTest2(
      {Key? key, required this.buttonIndex, required this.index})
      : super(key: key);
  final int buttonIndex;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              BlocProvider.of<CurrentTestCubit>(context).initial();
              Get.to(DictionaryTestPage(index: index, test_index: 2));
            },
            icon: SvgPicture.asset(_navPageIcons[buttonIndex]),
            iconSize: 172.0,
          ),
          SpecificCategoryNavWidgetText(
              navItemsRus: _navPageTextEntriesRus[buttonIndex],
              navItemsTurk: _navPageTextEntriesTurk[buttonIndex])
        ],
      ),
      width: 172.0,
    );
  }
}

class SpecificCategoryNavWidgetFields extends StatelessWidget {
  final List routeToPage = [
    const CommonPhrasesLearnPage(),
    const GreetingLearnPage(),
    const AcquaintanceLearnPage(),
    const QuestionsLearnPage(),
    const PersonalDataLearnPage(),
    const MeasurementsLearnPage(),
    const TimeAndDateLearnPage(),
    const EconomicTermsLearnPage(),
  ];

  final List<String> _navPageIcons = [
    'assets/icons/specific_category_nav_page_learn_icon.svg',
    'assets/icons/specific_category_nav_page_cards_icon.svg',
    'assets/icons/specific_category_nav_page_test_icon.svg',
    'assets/icons/specific_category_nav_page_test_icon.svg',
  ];

  final List<String> _navPageTextEntriesRus = [
    'Учить\n',
    'Карты\n',
    'Тест 1\n',
    'Тест 2\n'
  ];
  final List<String> _navPageTextEntriesTurk = [
    'Okamak',
    'Söz oýuny',
    'Test 1',
    'Test 2'
  ];

  SpecificCategoryNavWidgetFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class SpecificCategoryNavWidgetText extends StatelessWidget {
  const SpecificCategoryNavWidgetText(
      {Key? key, this.navItemsRus = '', this.navItemsTurk = ''})
      : super(key: key);

  final String navItemsRus;
  final String navItemsTurk;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(
          fontFamily: 'Nunito',
          fontSize: 25.0,
        ),
        children: [
          TextSpan(
            text: navItemsRus,
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(
            text: navItemsTurk,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/pages/categories/acquaintance_category/acquaintance_learn_page.dart';
import 'package:tmlearn/pages/categories/common_phrases_category/common_phrases_learn_page.dart';
import 'package:tmlearn/pages/categories/greeting_category/greeting_learn_page.dart';
import 'package:tmlearn/pages/categories/questions_category/questions_learn_page.dart';
import 'package:tmlearn/pages/dictionary_test/dictionary_test_page.dart';
import 'package:tmlearn/widgets/ariet_transparent_app_bar.dart';
import 'package:tmlearn/widgets/specific_category_card.dart';

class SpecificCategoryNavWidget extends StatelessWidget {
  SpecificCategoryNavWidget({
    Key? key,
    this.categoryTitleRus,
    this.categoryTitleTurk,
    required this.learnPageIndex,
  }) : super(key: key);

  final String? categoryTitleRus, categoryTitleTurk;
  int learnPageIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ArietTransparentBar(
        titleRus: categoryTitleRus,
        titleTurk: categoryTitleTurk,
      ),
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              SpecificCategoryNavWidgetButtonLearn(
                  buttonIndex: 0, routeToPageIndex: learnPageIndex),
              SpecificCategoryNavWidgetButtonCards(buttonIndex: 1)
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          const Divider(
            height: 40.0,
          ),
          Row(
            children: [
              SpecificCategoryNavWidgetButtonTest1(buttonIndex: 2),
              SpecificCategoryNavWidgetButtonTest2(buttonIndex: 3)
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ], mainAxisAlignment: MainAxisAlignment.center),
      ),
      backgroundColor: backgroundColor,
    );
  }
}

class SpecificCategoryNavWidgetButtonLearn extends SpecificCategoryNavWidgetFields {
  int buttonIndex;
  int routeToPageIndex;
  SpecificCategoryNavWidgetButtonLearn(
      {Key? key, required this.buttonIndex, required this.routeToPageIndex});

  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return routeToPage[routeToPageIndex];
              }));
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

class SpecificCategoryNavWidgetButtonCards extends SpecificCategoryNavWidgetFields {
  SpecificCategoryNavWidgetButtonCards({Key? key, required this.buttonIndex});
  int buttonIndex;
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SpecificCategoryCardWidget();
              }));
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

class SpecificCategoryNavWidgetButtonTest1 extends SpecificCategoryNavWidgetFields {
  SpecificCategoryNavWidgetButtonTest1({Key? key, required this.buttonIndex});
  int buttonIndex;
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return tempName[0];
              }));
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

class SpecificCategoryNavWidgetButtonTest2 extends SpecificCategoryNavWidgetFields {
  SpecificCategoryNavWidgetButtonTest2({Key? key, required this.buttonIndex});
  int buttonIndex;
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return tempName[0];
              }));
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
  final List routeToPage = [CommonPhrasesLearn(), GreetingLearnPage(), AcquaintanceLearnPage(), QuestionsLearnPage()];
  final List tempName = [DictionaryTestPage()];

  final List<String> _navPageIcons = [
    'assets/icons/greeting_nav_page_learn_icon.svg',
    'assets/icons/greeting_nav_page_cards_icon.svg',
    'assets/icons/greeting_nav_page_test_icon.svg',
    'assets/icons/greeting_nav_page_test_icon.svg'
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
  SpecificCategoryNavWidgetText(
      {Key? key, this.navItemsRus = '', this.navItemsTurk = ''})
      : super(key: key);

  final String navItemsRus;
  final String navItemsTurk;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: GoogleFonts.lato(
          textStyle: const TextStyle(fontSize: 25.0),
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
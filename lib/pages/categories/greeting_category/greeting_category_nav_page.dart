import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/pages/categories/greeting_category/greeting_learn_page.dart';
import 'package:tmlearn/widgets/ariet_transparent_app_bar.dart';

class GreetingNavPage extends StatelessWidget {
  GreetingNavPage({Key? key}) : super(key: key);

  final List<String> greetingNavPageIcons = [
    'assets/icons/greeting_nav_page_learn_icon.svg',
    'assets/icons/greeting_nav_page_cards_icon.svg',
    'assets/icons/greeting_nav_page_test_icon.svg',
    'assets/icons/greeting_nav_page_test_icon.svg'
  ];
  final List<String> greetingNavPageTextEntriesRus = [
    'Учить\n',
    'Карты\n',
    'Тест 1\n',
    'Тест 2\n'
  ];
  final List<String> greetingNavPageTextEntriesTurk = [
    'Okamak',
    'Söz oýuny',
    'Test 1',
    'Test 2'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ArietTransparentBar(
          titleRus: 'Обращение\n', titleTurk: 'Ýüzlenme'),
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              GreetingNavPageButton(buttonIndex: 0),
              GreetingNavPageButton(buttonIndex: 1)
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
          const Divider(
            height: 40.0,
          ),
          Row(
            children: [
              GreetingNavPageButton(buttonIndex: 2),
              GreetingNavPageButton(buttonIndex: 3)
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ], mainAxisAlignment: MainAxisAlignment.center),
      ),
      backgroundColor: backgroundColor,
    );
  }
}

class GreetingNavPageButton extends GreetingNavPage {
  GreetingNavPageButton({Key? key, this.buttonIndex = 0}) : super(key: key);
  final int buttonIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const GreetingLearnPage();
              }));
            },
            icon: SvgPicture.asset(greetingNavPageIcons[buttonIndex]),
            iconSize: 172.0,
          ),
          GreetingNavPageText(
              greetingItemsRus: greetingNavPageTextEntriesRus[buttonIndex],
              greetingItemsTurk: greetingNavPageTextEntriesTurk[buttonIndex])
        ],
      ),
      width: 172.0,
    );
  }
}

class GreetingNavPageText extends GreetingNavPageButton {
  GreetingNavPageText(
      {Key? key, this.greetingItemsRus = '', this.greetingItemsTurk = ''})
      : super(key: key);

  final String greetingItemsRus;
  final String greetingItemsTurk;

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
            text: greetingItemsRus,
            style: TextStyle(color: primaryColor)
          ),
          TextSpan(
            text: greetingItemsTurk,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

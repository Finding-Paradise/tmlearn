import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmlearn/global_variables.dart';

class GreetingNavPageText extends StatelessWidget {
  const GreetingNavPageText({Key? key, this.greetingItemsRus = '', this.greetingItemsTurk = ''})
      : super(key: key);

  final String greetingItemsRus;
  final String greetingItemsTurk;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: GoogleFonts.lato(
          textStyle: const TextStyle(
            fontSize: 25.0,
          ),
        ),
        children: [
          TextSpan(
            text: greetingItemsRus,
            style: TextStyle(color: primaryColor),
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

class GreetingNavPage extends StatelessWidget {
  const GreetingNavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TmLearn')),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    SvgPicture.asset('icons/greeting_nav_page_learn_icon.svg'),
                    const GreetingNavPageText(greetingItemsRus: 'Учить\n', greetingItemsTurk: 'Okamak')
                  ],
                ),
                width: 152.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2)),
              ),
              Container(
                child: Column(
                  children: [
                    SvgPicture.asset('icons/greeting_nav_page_cards_icon.svg'),
                    const GreetingNavPageText(greetingItemsRus: 'Карты\n', greetingItemsTurk: 'Söz oýuny')
                  ],
                ),
                width: 152.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2)),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    SvgPicture.asset('icons/greeting_nav_page_test_icon.svg'),
                    const GreetingNavPageText(greetingItemsRus: 'Тест 1\n', greetingItemsTurk: 'Test 1')
                  ],
                ),
                width: 152.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2)),
              ),
              Container(
                child: Column(
                  children: [
                    SvgPicture.asset('icons/greeting_nav_page_test_icon.svg'),
                    const GreetingNavPageText(greetingItemsRus: 'Тест 2\n', greetingItemsTurk: 'Test 2')
                  ],
                ),
                width: 152.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2)),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      backgroundColor: backgroundColor,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/pages/categories/common_phrases_category/common_phrases_page.dart';
import 'package:tmlearn/pages/categories/greeting_category/greeting_page.dart';
import 'package:tmlearn/widgets/ariet_transparent_app_bar.dart';

class CategoryNavPage extends StatelessWidget {
  CategoryNavPage({Key? key}) : super(key: key);

  final List _categoriesList = const [CommonPhrasesPage(), GreetingPage()];

  final List<String> categoryNavButtonsRus = [
    'Общие фразы\n',
    'Обращение\n',
    'Знакомство\n',
    'Аэрпорт\n',
    'Вопросы\n',
    'Транспорт\n'
  ];
  final List<String> categoryNavButtonsTurk = [
    'Umumy jümleler',
    'Ýüzlenme',
    'Tanyşlyk',
    'Howa menzili',
    'Soraglar',
    'Transport'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ArietTransparentBar(
        titleRus: 'Разделы\n',
        titleTurk: 'Bölümler',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: ListView.separated(
            itemCount: categoryNavButtonsRus.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                height: 11.0,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  SizedBox(
                    width: 361.0,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return _categoriesList[index];
                          },
                        ));
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.nunito(fontSize: 25.0),
                            children: [
                              TextSpan(
                                text: categoryNavButtonsRus[index],
                                style: TextStyle(color: primaryColor),
                              ),
                              TextSpan(
                                text: categoryNavButtonsTurk[index],
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.only(
                              left: 21.0, top: 21.0, bottom: 21.0),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          secondaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              );
            },
          ),
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}

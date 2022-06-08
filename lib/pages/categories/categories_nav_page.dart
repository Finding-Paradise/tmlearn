import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/pages/categories/acquaintance_category/acquaintance_page.dart';
import 'package:tmlearn/pages/categories/common_phrases_category/common_phrases_page.dart';
import 'package:tmlearn/pages/categories/economic_terms_category/economic_terms_page.dart';
import 'package:tmlearn/pages/categories/greeting_category/greeting_page.dart';
import 'package:tmlearn/pages/categories/measurements_category/measurements_page.dart';
import 'package:tmlearn/pages/categories/personal_data_category/personal_data_page.dart';
import 'package:tmlearn/pages/categories/questions_category/questions_page.dart';
import 'package:tmlearn/pages/categories/time_and_date_category/time_and_date_page.dart';
import 'package:tmlearn/widgets/custom_transparent_app_bar.dart';
import 'package:tmlearn/widgets/navigation_drawer.dart';

class CategoryNavPage extends StatelessWidget {
  CategoryNavPage({Key? key}) : super(key: key);

  final List _categoriesList = const [
    CommonPhrasesPage(),
    GreetingPage(),
    AcquaintancePage(),
    QuestionsPage(),
    PersonalDataPage(),
    MeasurementsPage(),
    TimeAndDatePage(),
    EconomicTermsPage()
  ];

  final List<String> categoryNavButtonsRus = [
    'Общие фразы\n',
    'Обращение\n',
    'Знакомство\n',
    'Вопросы\n',
    'Анкетные данные\n',
    'Форма, размер\n',
    'Время, даты\n',
    'Экономические термины\n'
  ];
  final List<String> categoryNavButtonsTurk = [
    'Umumy jümleler',
    'Ýüzlenme',
    'Tanyşlyk',
    'Soraglar',
    'Anket maglumatlary',
    'Görnüş, ölçeg',
    'Wagt, seneler',
    'Ykdysady şertler'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomTransparentAppBar(
        titleRus: 'Разделы\n',
        titleTurk: 'Bölümler',
      ),
      endDrawer: const NavigationDrawerWidget(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: ListView.separated(
            itemCount: _categoriesList.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                height: 11.0,
                color: Colors.transparent,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Get.to(_categoriesList[index]);
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                            fontFamily: 'Nunito', fontSize: 25.0),
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
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      secondaryColor,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}

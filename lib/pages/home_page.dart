import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/logic/favorite_cubit.dart';
import 'package:tmlearn/pages/categories/categories_nav_page.dart';
import 'package:tmlearn/pages/dictionary_page.dart';
import 'package:tmlearn/pages/favorite_page.dart';
import 'package:tmlearn/pages/history_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List pagesList = [
    CategoryNavPage(),
    const DictionaryPage(),
    const FavoritePage(),
    const HistoryPage()
  ];

  final String appDescription = 'Русско-Туркменский\nсловарь и разговорник';

  @override
  void initState() {
    super.initState();
    BlocProvider.of<FavoriteCubit>(context).get_favorites();
  }

  final List<String> homePageNavButtonsRus = [
    'Разделы\n',
    'Словарь\n',
    'Избранные\n',
    'История\n'
  ];

  final List<String> homePageNavButtonsTurk = [
    'Bölümler',
    'Sözlük',
    'Halananlar',
    'Geçmiş'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 11.0),
            child: SafeArea(
              child: SvgPicture.asset('assets/icons/logo.svg'),
            ),
          ),
          Center(
            child: RichText(
              text: TextSpan(
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                children: [
                  const TextSpan(
                    text: 'Tm',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: 'Learn',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text(
              appDescription,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(37.0),
            itemCount: homePageNavButtonsRus.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                height: 26.0,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return pagesList[index];
                      },
                    ));
                  },
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.nunito(fontSize: 25.0),
                      children: [
                        TextSpan(
                          text: homePageNavButtonsRus[index],
                          style: TextStyle(color: primaryColor),
                        ),
                        TextSpan(
                          text: homePageNavButtonsTurk[index],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(vertical: 16.0),
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
        ],
      ),
      backgroundColor: backgroundColor,
    );
  }
}

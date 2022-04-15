import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final String appDescription = 'Русско-Туркменский\nсловарь и разговорник';
  final Color primaryColor = const Color.fromARGB(255, 235, 200, 17);
  final Color secondaryColor = const Color.fromARGB(255, 71, 58, 99);
  final Color backgroundColor = const Color.fromARGB(255, 25, 16, 52);
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
              child: SvgPicture.asset('assets/logo.svg'),
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
              return Row(
                children: [
                  SizedBox(
                    width: 317.0,
                    child: TextButton(
                      onPressed: null,
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
        ],
      ),
      backgroundColor: backgroundColor,
    );
  }
}

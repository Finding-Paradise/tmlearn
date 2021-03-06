import 'package:flutter/material.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/hive_data/data.dart';
import 'package:tmlearn/widgets/icons_row.dart';

class DictionaryInfoPage extends StatelessWidget {
  DictionaryInfoPage(this.phrase, {Key? key}) : super(key: key);
  Phrases phrase;

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: backgroundColor,
    //   appBar: const CustomTransparentAppBar(
    //     titleRus: 'Словарь\n',
    //     titleTurk: 'Sözlük',
    //   ),
    //   endDrawer: const NavigationDrawerWidget(),
    //   body: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 17) +
    //         const EdgeInsets.only(top: 20, bottom: 32),
    return Column(children: [
      // Container(
      //   height: 44,
      //   padding: const EdgeInsets.only(left: 25, right: 8) +
      //       const EdgeInsets.symmetric(vertical: 8),
      //   decoration: BoxDecoration(
      //       color: secondaryColor,
      //       borderRadius: BorderRadius.circular(11.4)),
      //   child: Row(children: [
      //     Expanded(child: TextFormField()),
      //     const SizedBox(width: 30),
      //     FloatingActionButton(
      //       backgroundColor: Colors.black,
      //       onPressed: () {},
      //       child: Icon(
      //         Icons.search,
      //         color: primaryColor,
      //       ),
      //     )
      //   ]),
      // ),
      const SizedBox(height: 21),
      Expanded(
        child: Container(
            padding: const EdgeInsets.only(top: 17),
            decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(11.4)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 38),
                  child: Text(
                    phrase.nameRus,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: Divider(color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 38, top: 21),
                  child: Text(
                    phrase.nameTurk,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 30,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35.0),
                  child: IconRow(
                    phrase: phrase,
                  ),
                  // child: Text("Has to be corrected"),
                ),
              ],
            )),
      ),
    ]);
    //     ),
    //   ),
    // );
  }
}

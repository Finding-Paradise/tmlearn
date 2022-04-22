import 'package:flutter/material.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/widgets/ariet_transparent_app_bar.dart';
import 'package:tmlearn/widgets/icons_row.dart';

class DictionaryInfoPage extends StatelessWidget {
  const DictionaryInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ArietTransparentBar(titleRus: 'Словарь\n', titleTurk: 'Sözlük',),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17) +
            EdgeInsets.only(top: 20, bottom: 32),
        child: Column(
          children: [
            Container(
              height: 44,
              padding: EdgeInsets.only(left: 25, right: 8) +
                  EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(11.4)),
              child: Row(children: [
                Expanded(child: TextFormField()),
                SizedBox(width: 30),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {},
                  child: Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
                )
              ]),
            ),
            SizedBox(height: 21),
            Expanded(
              child: Container(
                  padding: EdgeInsets.only(top: 17),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(11.4)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 38),
                        child: Text(
                          "School",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 22),
                        child: Divider(color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 38, top: 21),
                        child: Text(
                          "Mekdep",
                          style: TextStyle(
                            color: Color(0xFFEBC811),
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35.0),
                        child: IconRow(),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/pages/dictionary_info_page.dart';
import 'package:tmlearn/widgets/ariet_transparent_app_bar.dart';

class DictionaryPage extends StatelessWidget {
  const DictionaryPage({Key? key}) : super(key: key);

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
                padding: EdgeInsets.only(top: 7),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(11.4)),
                child: ListView.separated(
                    itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(left: 31),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return DictionaryInfoPage();
                                }));
                              },
                              child: Text(
                                "School",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                    separatorBuilder: (contex, index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17),
                        child: Divider(
                          color: Colors.black,
                        )),
                    itemCount: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

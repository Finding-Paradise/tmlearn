import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/transparent_app_bar.dart';

class DictionaryPage extends StatelessWidget {
  const DictionaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191034),
      appBar: TransparentAppBar(title: "Словарь"),
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
                  color: Color(0xFF473A63),
                  borderRadius: BorderRadius.circular(11.4)),
              child: Row(children: [
                Expanded(child: TextFormField()),
                SizedBox(width: 30),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {},
                  child: Icon(
                    Icons.search,
                    color: Color(0xFFEBC811),
                  ),
                )
              ]),
            ),
            SizedBox(height: 21),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 7),
                decoration: BoxDecoration(
                    color: Color(0xFF473A63),
                    borderRadius: BorderRadius.circular(11.4)),
                child: ListView.separated(
                    itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(left: 31),
                          child: Text(
                            "Heelo",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
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

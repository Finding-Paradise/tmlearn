import 'package:flutter/material.dart';
import 'package:tmlearn/widgets/transparent_app_bar.dart';

class DictionaryInfoPage extends StatelessWidget {
  const DictionaryInfoPage({Key? key}) : super(key: key);

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
                  padding: EdgeInsets.only(top: 17),
                  decoration: BoxDecoration(
                      color: Color(0xFF473A63),
                      borderRadius: BorderRadius.circular(11.4)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 38),
                        child: Text(
                          "Shool",
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
                          "Shool",
                          style: TextStyle(
                            color: Color(0xFFEBC811),
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 44) +
                            EdgeInsets.only(bottom: 35),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 30,
                                    color: Color(0xFFEBC811),
                                  )),IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 30,
                                    color: Color(0xFFEBC811),
                                  )),IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 30,
                                    color: Color(0xFFEBC811),
                                  )),IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.play_arrow,
                                    size: 30,
                                    color: Color(0xFFEBC811),
                                  )),
                            ]),
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

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/hive_data/data.dart';
import 'package:tmlearn/pages/dictionary_info_page.dart';
import 'package:tmlearn/widgets/custom_transparent_app_bar.dart';
import 'package:tmlearn/widgets/navigation_drawer.dart';

class DictionaryPage extends StatefulWidget {
  DictionaryPage({Key? key}) : super(key: key);

  @override
  State<DictionaryPage> createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {
  var _items = <Phrases>[];
  late TextEditingController controller;

  Future<void> readJson() async {
    final response = await rootBundle
        .loadString("assets/app_sections_data/dictionary_words.json");
    var data = await jsonDecode(response);
    for (var element in data["dictionaryItems"]) {
      _items.add(Phrases.fromJson(element));
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    readJson();
    controller = TextEditingController();
  }

  bool show_find = false;
  List<Phrases> finding_list = [];
  bool is_inside_view_word = false;
  late Phrases current_phrase;

  @override
  Widget build(BuildContext context) {
    print(show_find);
    return Scaffold(
      backgroundColor: backgroundColor,
      // appBar: const CustomTransparentAppBar(
      //   titleRus: 'Словарь\n',
      //   titleTurk: 'Sözlük',
      // ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: FloatingActionButton(
            heroTag: 'btn-back',
            backgroundColor: Colors.black,
            onPressed: () {
              if (is_inside_view_word) {
                setState(() {
                  is_inside_view_word = !is_inside_view_word;
                });
              } else {
                Navigator.pop(context);
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 3.0),
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: primaryColor,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: FloatingActionButton.small(
              heroTag: 'btn-drawer',
              backgroundColor: Colors.black,
              disabledElevation: 0,
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/TL.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          )
        ],
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(fontSize: 25.0),
            ),
            children: [
              TextSpan(
                text: "Словарь",
                style: TextStyle(color: primaryColor),
              ),
            ],
          ),
        ),
      ),
      endDrawer: const NavigationDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17) +
            const EdgeInsets.only(top: 20, bottom: 32),
        child: Column(
          children: [
            Container(
              height: 54,
              padding: const EdgeInsets.only(left: 25, right: 8) +
                  const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(11.4)),
              child: Row(children: [
                Expanded(
                    child: TextFormField(
                  controller: controller,
                  onFieldSubmitted: (String text) {
                    if (text.isNotEmpty) {
                      setState(() {
                        finding_list = _items
                            .where(
                              (element) =>
                                  element.nameRus
                                      .toLowerCase()
                                      .contains(text.toLowerCase()) |
                                  element.nameTurk
                                      .toLowerCase()
                                      .contains(text.toLowerCase()),
                            )
                            .toList();
                        show_find = true;
                      });
                      print(finding_list);
                      print(text);
                    } else {
                      setState(() {
                        show_find = false;
                      });
                    }
                  },
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                  decoration: InputDecoration(
                    hintText: "Поиск",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 19,
                    ),
                  ),
                )),
                const SizedBox(width: 30),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    String text = controller.text;
                    if (text.isNotEmpty) {
                      setState(() {
                        finding_list = _items.where(
                          (element) {
                            print(element.nameRus);
                            print(text);
                            return element.nameRus
                                    .toLowerCase()
                                    .contains(text.toLowerCase()) |
                                element.nameTurk
                                    .toLowerCase()
                                    .contains(text.toLowerCase());
                          },
                        ).toList();
                        print(finding_list);
                        // print("Hello".toString());
                        show_find = true;
                      });
                      print(finding_list);
                      print(text);
                    } else {
                      setState(() {
                        show_find = false;
                      });
                    }
                    setState(() {
                      is_inside_view_word = false;
                    });
                  },
                  child: Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
                )
              ]),
            ),
            const SizedBox(height: 21),
            // if(is_inside_view_word)DictionaryInfoPage(show_find
            //                           ? finding_list[index]
            //                           : _items[index]),
            if (is_inside_view_word)
              Expanded(child: DictionaryInfoPage(current_phrase))
            else
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 7),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(11.4)),
                  child: ListView.separated(
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(left: 31),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    current_phrase = show_find
                                        ? finding_list[index]
                                        : _items[index];
                                    is_inside_view_word = true;
                                  });
                                  // Navigator.push(context,
                                  //     MaterialPageRoute(builder: (context) {
                                  //   return DictionaryInfoPage(show_find
                                  //       ? finding_list[index]
                                  //       : _items[index]);
                                  // }));
                                },
                                child: Text(
                                  show_find
                                      ? finding_list[index].nameRus
                                      : _items[index].nameRus,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      separatorBuilder: (contex, index) => const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          child: Divider(
                            color: Colors.black,
                          )),
                      itemCount:
                          show_find ? finding_list.length : _items.length),
                ),
              )
          ],
        ),
      ),
    );
  }
}

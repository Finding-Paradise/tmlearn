import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/widgets/ariet_transparent_app_bar.dart';
import 'dart:convert';

import 'package:tmlearn/widgets/icons_row.dart';

class SpecificCategoryLearnWidget extends StatefulWidget {

  final String? categoryTitleRus, categoryTitleTurk;
  final filePath;

  SpecificCategoryLearnWidget({Key? key, required this.filePath, required this.categoryTitleRus, required this.categoryTitleTurk}) : super(key: key);


  @override
  State<SpecificCategoryLearnWidget> createState() =>
      _SpecificCategoryLearnWidgetState();
}

class _SpecificCategoryLearnWidgetState extends State<SpecificCategoryLearnWidget> {
  @override
  void initState() {
    super.initState();
    readJson();
  }

  List _items = [];

  Future<void> readJson() async {
    final response = await rootBundle.loadString(widget.filePath);
    final data = await jsonDecode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ArietTransparentBar(
          titleRus: widget.categoryTitleRus, titleTurk: widget.categoryTitleTurk),
      body: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: ListView.separated(
          itemCount: _items.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(height: 13.0);
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: TextButton(
                onPressed: null,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Column(
                    children: [
                      Text(
                        _items[index]["nameRus"],
                        style: GoogleFonts.lato(
                          fontSize: 20.0,
                          textStyle: TextStyle(color: primaryColor),
                        ),
                      ),
                      Text(
                        _items[index]["nameTurk"],
                        style: GoogleFonts.lato(
                          fontSize: 20.0,
                          textStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const Divider(height: 10),
                      const IconRow(),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(secondaryColor),
                    shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(11.0)))),
              ),
            );
          },
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}

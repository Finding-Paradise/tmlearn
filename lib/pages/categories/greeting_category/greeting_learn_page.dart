import 'package:flutter/material.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/widgets/ariet_transparent_app_bar.dart';

class GreetingLearnPage extends StatefulWidget {
  const GreetingLearnPage({Key? key}) : super(key: key);

  @override
  State<GreetingLearnPage> createState() => _GreetingLearnPageState();
}

class _GreetingLearnPageState extends State<GreetingLearnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ArietTransparentBar(titleRus: 'Обращение\n', titleTurk: 'Ýüzlenme'),
      body: Container(),
      backgroundColor: backgroundColor,
    );
  }
}

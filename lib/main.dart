import 'package:flutter/material.dart';
import 'package:tmlearn/pages/favorite_page.dart';
import 'package:tmlearn/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TmLearn',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: FavoritePage(),
    );
  }
}

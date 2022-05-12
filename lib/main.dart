import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmlearn/hive_data/acquaintance_data/acquaintance.dart';
import 'package:tmlearn/pages/home_page.dart';

Future<void> main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
  Hive.registerAdapter(AcquaintanceAdapter());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TmLearn',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          primaryColor: Colors.deepPurple[50]),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

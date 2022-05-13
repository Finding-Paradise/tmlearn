import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tmlearn/hive_data/acquaintance_data/acquaintance.dart';
import 'package:tmlearn/hive_data/common_phrases_data/common_phrases.dart';
import 'package:tmlearn/hive_data/economic_terms_data/economic_terms.dart';
import 'package:tmlearn/hive_data/greetings_data/greetings.dart';
import 'package:tmlearn/hive_data/measurements_data/measurements.dart';
import 'package:tmlearn/hive_data/personal_data/personal.dart';
import 'package:tmlearn/hive_data/questions_data/questions.dart';
import 'package:tmlearn/hive_data/time_and_date_data/time_and_date.dart';
import 'package:tmlearn/pages/home_page.dart';

Future<void> main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
  Hive.registerAdapter(AcquaintanceAdapter());
  Hive.registerAdapter(CommonPhrasesAdapter());
  Hive.registerAdapter(EconomicTermsAdapter());
  Hive.registerAdapter(GreetingsAdapter());
  Hive.registerAdapter(MeasurementsAdapter());
  Hive.registerAdapter(PersonalAdapter());
  Hive.registerAdapter(QuestionsAdapter());
  Hive.registerAdapter(TimeAndDateAdapter());
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

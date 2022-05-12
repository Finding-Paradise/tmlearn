import 'package:hive/hive.dart';

part 'common_phrases.g.dart';

@HiveType(typeId: 2)
class CommonPhrases {
  @HiveField(0)
  late List<String> nameRus = [
    "Здравствуйте!",
    "Доброе утро!",
    "Добрый день!",
    "Добрый вечер!",
    "Спокойной ночи!",
    "Привет!",
    "Рад вас видеть!",
    "Добро пожаловать!",
    "Как поживаешь?",
    "Как дела?",
    "Как твои дела?",
    "Как вы поживаете?",
    "Спасибо, хорошо!",
  ];

  @HiveField(1)
  late List<String> nameTurk = [
    "Salam aleykum! Aleykum salam!",
    "Ertiriňiz haýyr!",
    "Gündiziňiz haýyr!",
    "Agşamyňyz haýyr!",
    "Gijäňiz rahat bolsun!",
    "Salam!",
    "Sizi gorenime şat!",
    "Hoş geldiňiz!",
    "Ýagdaýyň nähili?",
    "Işler nähili?",
    "Işleriň nähili?",
    "Ýagdaýyňyz nähili?",
    "Sagboluň, oňat!",
  ];
}
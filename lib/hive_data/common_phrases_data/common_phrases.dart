import 'package:hive/hive.dart';


@HiveType(typeId: 2)
class CommonPhrases {
  CommonPhrases({required this.nameRus, required this.nameTurk});

  @HiveField(0)
  String nameRus;
  // late List<String> nameRus = [
  //   "Здравствуйте!",
  //   "Доброе утро!",
  //   "Добрый день!",
  //   "Добрый вечер!",
  //   "Спокойной ночи!",
  //   "Привет!",
  //   "Рад вас видеть!",
  //   "Добро пожаловать!",
  //   "Как поживаешь?",
  //   "Как дела?",
  //   "Как твои дела?",
  //   "Как вы поживаете?",
  //   "Спасибо, хорошо!",
  // ];

  @HiveField(1)
  String nameTurk;
  // late List<String> nameTurk = [
  //   "Salam aleykum! Aleykum salam!",
  //   "Ertiriňiz haýyr!",
  //   "Gündiziňiz haýyr!",
  //   "Agşamyňyz haýyr!",
  //   "Gijäňiz rahat bolsun!",
  //   "Salam!",
  //   "Sizi gorenime şat!",
  //   "Hoş geldiňiz!",
  //   "Ýagdaýyň nähili?",
  //   "Işler nähili?",
  //   "Işleriň nähili?",
  //   "Ýagdaýyňyz nähili?",
  //   "Sagboluň, oňat!",
  // ];
  factory CommonPhrases.fromJson(Map<String, dynamic> json) {
    return CommonPhrases(
      nameTurk: json["nameTurk"],
      nameRus: json["nameRus"],
    );
  }
}

import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

import '../data.dart';


@HiveType(typeId: 8)
class TimeAndDate extends Equatable implements Phrases {
  TimeAndDate({required this.nameRus, required this.nameTurk});

  @override
  @HiveField(0)
  String nameRus;
  // late List<String> nameRus = [
  //   "Месяц",
  //   "Январь",
  //   "Февраль",
  //   "Март",
  //   "Апрель",
  //   "Май",
  //   "Июнь",
  //   "Июль",
  //   "Август",
  //   "Сентябрь",
  //   "Октябрь",
  //   "Ноябрь",
  //   "Декабрь",
  //   "Год",
  //   "Понедельник",
  //   "Вторник",
  //   "Среда",
  //   "Четверг",
  //   "Пятница",
  //   "Суббота",
  //   "Воскресенье",
  //   "Летнее время",
  //   "Местное время",
  //   "Сколько времени?",
  //   "Сейчас 10 часов",
  //   "9 часов 30 минут (пол десятого)",
  //   "Без пятнадцати 12",
  //   "Времена года",
  //   "Зима",
  //   "Весна",
  //   "Лето",
  //   "Осень",
  //   "Вчера",
  //   "Сегодня",
  //   "Завтра",
  //   "Послезавтра",
  //   "Сегодня утром",
  //   "Давно",
  //   "Недавно",
  //   "В последнее время",
  //   "Сейчас",
  //   "Мне пора!",
  // ];

  @override
  @HiveField(1)
  String nameTurk;
  // late List<String> nameTurk = [
  //   "Aý",
  //   "Ýanwar",
  //   "Fewral",
  //   "Mart",
  //   "Aprel",
  //   "Maý",
  //   "Iýun",
  //   "Iýul",
  //   "Awgust",
  //   "Sentýabr",
  //   "Oktýabr",
  //   "Noýabr",
  //   "Dekabr",
  //   "Ýyl",
  //   "Duşenbe",
  //   "Sişenbe",
  //   "Çarşenbe",
  //   "Penşenbe",
  //   "Anna",
  //   "Şenbe",
  //   "Ýekşenbe",
  //   "Tomus wagty",
  //   "Ýerli wagt",
  //   "Sagat näçe?",
  //   "Häzir sagat 10",
  //   "9 sagat 30 minut (10-nyň ýary)",
  //   "15 minudy kem 12",
  //   "Ýyl pasyllary",
  //   "Gyş",
  //   "Bahar",
  //   "Tomus",
  //   "Güýz",
  //   "Düýn, öten gün",
  //   "Şu gün",
  //   "Ertir",
  //   "Birigün",
  //   "Şügün irden",
  //   "Öň, bireýýäm",
  //   "Ýaňy-ýakynda, golaýda",
  //   "Soňky wagtda",
  //   "Häzir",
  //   "Meniň gitmeli wagtym boldy!",
  // ];
  factory TimeAndDate.fromJson(Map<String, dynamic> json) {
    return TimeAndDate(
      nameTurk: json["nameTurk"],
      nameRus: json["nameRus"],
    );
  }
  @override
  Map<String, dynamic> toJson() {
    return {
      "nameTurk":nameTurk,
      "nameRus":nameRus,
    };
  }

  @override
  String toString() {
    // TODO: implement toString
    return "$nameRus:$nameTurk";
  }

  @override
  // TODO: implement props
  List<Object?> get props => [nameRus, nameTurk];
}

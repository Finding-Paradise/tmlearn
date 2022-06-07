import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:tmlearn/hive_data/data.dart';


@HiveType(typeId: 1)
class Acquaintance extends Equatable implements Phrases {
  Acquaintance({required this.nameTurk, required this.nameRus});

  @override
  @HiveField(0)
  String nameRus;
  // late List<String> nameRus = [
  // "Я...",
  // "Меня зовут...",
  // "Как вас зовут?",
  // "Моя фамилия...",
  // "Разрешите представить вам...",
  // "Приятно",
  // "Очень приятно",
  // "Приятно с вами познакомится",
  // "Мне тоже очень приятно",
  // "Прошу прощения, я вас знаю",
  // "Вы меня не узнаете?",
  // "Да, это я",
  // "Я из Ашхабада",
  // "Я здесь по",
  // "Вы здесь впервые?",
  // "Вам нравится Ашхабад?",
  // "Да очень",
  // "Это красивый город",
  // "Это мой приятель",
  // "Вы не знакомы?",
  // ];

  @override
  @HiveField(1)
  String nameTurk;
  // late List<String> nameTurk = [
  //   "Men...",
  //   "Meniň adym...",
  //   "Siziň adyňyz kim?",
  //   "Meniň familiýam...",
  //   "...siziň bilen tanyşdyrmaga rugsat beriň",
  //   "Ýakymly",
  //   "Örän ýakymly",
  //   "Siz bilen tanyşmak örän ýakymly",
  //   "Manada örän yakymly",
  //   "Bagyşlaň, men sizi tanaýaryn",
  //   "Siz meni tanamadyňyzmy?",
  //   "Hawa, bu men",
  //   "Men Aşgabatdan",
  //   "Men bu ýerde iş bilen",
  //   "Siz bu ýerde birinji gezekmi?",
  //   "Aşgabat siziň göwnüňize ýaraýamy?",
  //   "Hawa",
  //   "Bu owadan şäher",
  //   "Bu meniň dostum/kärdeşim",
  //   "Siz tanyş dälmi?"
  // ];
  // @override
  // factory Acquaintance.fromJson(Map<String, dynamic> json) {
  //   return Acquaintance(
  //     nameTurk: json["nameTurk"],
  //     nameRus: json["nameRus"],
  //   );
  // }
  
  
  @override
  Map<String, dynamic> toJson() {
    return {
      "nameTurk":nameTurk,
      "nameRus":nameRus,
    };
  }

  static fromJson(Map<String,dynamic> json){
    return Acquaintance(
      nameRus:json["nameRus"],
      nameTurk:json["nameTurk"],
    );
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

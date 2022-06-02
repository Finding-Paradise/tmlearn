import 'package:hive/hive.dart';


@HiveType(typeId: 7)
class Questions {
  Questions({required this.nameRus, required this.nameTurk});

  @HiveField(0)
  String nameRus;
  // late List<String> nameRus = [
  //   "Что?",
  //   "Что это?",
  //   "Что случилось?",
  //   "Что это за город?",
  //   "Кто?",
  //   "Кто это?",
  //   "Кто там?",
  //   "Для кого это?",
  //   "Чье это?",
  //   "С кем вы разговариваете?",
  //   "Где?",
  //   "Где это?",
  //   "Где находиться?",
  //   "Куда вы идете?",
  //   "Как пройти к ...?",
  //   "Как?",
  //   "Как вас зовут?",
  //   "Как сказать по-туркменски ...?",
  //   "Какой?",
  //   "Какого цвета?",
  //   "Когда?",
  //   "Когда прибывает поезд?",
  //   "Когда отходит поезд?",
  //   "Куда?",
  //   "Куда вы идете?",
  //   "Откуда вы?",
  //   "Откуда вы приехали?",
  //   "Сколько?",
  //   "Сколько вам лет?",
  //   "Сколько это стоит?",
  //   "Сколько времени?",
  // ];

  @HiveField(1)
  String nameTurk;
  // late List<String> nameTurk = [
  //   "Näme?",
  //   "Bu näme?",
  //   "Näme boldy?",
  //   "Bu haýsy şäher?",
  //   "Kim?",
  //   "Bu kim?",
  //   "Ol ýerde kim bar?",
  //   "Bu kim üçin?",
  //   "Bu kimiňki?",
  //   "Siz kim bilen gürleşýärsiňiz?",
  //   "Nirede?",
  //   "Bu nirede?",
  //   "Bu nirede ýerleşýär?",
  //   "Siz nrä gidýärsiňiz?",
  //   "... nädip barmaly?",
  //   "Nädip?",
  //   "Siziň adyňyz kim?",
  //   "Türkmenç ... nädip aýdylýar?",
  //   "Nähili?",
  //   "Nähili reňk?",
  //   "Haçan?",
  //   "Otly haçan gelýär?",
  //   "Otly haçan ugraýar?",
  //   "Nirä?",
  //   "Siz nirä barýaňyz?",
  //   "Siz nireden?",
  //   "Siz nireden gelýäňiz?",
  //   "Näçe?",
  //   "Siz näçe ýaşyňyzda?",
  //   "Bunuň bahasy näçe?",
  //   "Sagat näçe?",
  // ];
  factory Questions.fromJson(Map<String, dynamic> json) {
    return Questions(
      nameTurk: json["nameTurk"],
      nameRus: json["nameRus"],
    );
  }
}

import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:tmlearn/hive_data/data.dart';


@HiveType(typeId: 7)
class Questions extends Equatable implements Phrases{
  Questions({required this.nameRus, required this.nameTurk});

  @override
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

  @override
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

  @override
  Map<String, dynamic> toJson() {
    return {
      "nameTurk":nameTurk,
      "nameRus":nameRus,
    };
  }

  static fromJson(Map<String,dynamic> json){
    return Questions(
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

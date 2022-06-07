import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:tmlearn/hive_data/data.dart';


@HiveType(typeId: 6)
class Personal extends Equatable implements Phrases {
  Personal({required this.nameRus, required this.nameTurk});

  @HiveField(0)
  String nameRus;
  // late List<String> nameRus = [
  //   "Фамилия",
  //   "Имя",
  //   "Дата рождения",
  //   "Место рождения",
  //   "Гражданство",
  //   "Пол",
  //   "Женский",
  //   "Мужской",
  //   "Постоянное местожительство",
  //   "Адрес в Туркменистане",
  //   "Национальность",
  //   "Образование",
  //   "Среднее образование",
  //   "Высшее образование",
  //   "Профессиональный опыт",
  //   "У меня была практика...",
  //   "Я работал/а ...",
  //   "Работаю в фирме",
  //   "Знание иностранных языков",
  //   "Семейное положение",
  //   "Женат / замужем",
  //   "Холост / не замужем",
  //   "Номер паспорта",
  //   "Выдан",
  //   "Выдавший орган",
  //   "Возраст",
  // ];

  @HiveField(1)
  String nameTurk;
  // late List<String> nameTurk = [
  //   "Familiýa",
  //   "At",
  //   "Dogulan güni",
  //   "Dogulan ýeri",
  //   "Raýatçylyk",
  //   "Jyns",
  //   "Aýal jynsy",
  //   "Erkek jynsy",
  //   "Hemişelik ýaşaýan ýeri",
  //   "Türkmenistanda adresi",
  //   "Milleti",
  //   "Bilimi",
  //   "Orta bilim",
  //   "Ýokary bilim",
  //   "Professional dereje",
  //   "Meniň ... tejribam boldy",
  //   "men ... işledim",
  //   "Firmada işleýärin",
  //   "Daşary ýurt dilini bilişi",
  //   "Maşgala ýagdaýy",
  //   "Aýally, öýlenen / durmuşa çykan",
  //   "Sallah / durmuşa çykmadyk",
  //   "Pasport belgisi",
  //   "Berildi",
  //   "Kim tarapyndan berildi",
  //   "Ýaş",
  // ];

  Map<String, dynamic> toJson() {
    return {
      "nameTurk":nameTurk,
      "nameRus":nameRus,
    };
  }

  static fromJson(Map<String,dynamic> json){
    return Personal(
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

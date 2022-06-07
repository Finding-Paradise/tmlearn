import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

import '../data.dart';

@HiveType(typeId: 3)
class EconomicTerms extends Equatable implements Phrases {
  EconomicTerms({required this.nameRus, required this.nameTurk});

  @HiveField(0)
  String nameRus;
  // late List<String> nameRus = [
  //   "Автоматизация",
  //   "Абонент",
  //   "Абонентская задолженность",
  //   "Абонентская плата",
  //   "Автоматизация банковских операций",
  //   "База данных",
  //   "Банковский кредит",
  //   "Баланс",
  //   "Безбумажные расчеты",
  //   "Безналичные деньги",
  //   "Безналичные расчеты",
  //   "Баланс: актив и пассив баланса",
  //   "Бизнес",
  //   "Бизнес-план",
  //   "Капитализация",
  //   "Капитализация дохода, прибыли",
  // ];

  @HiveField(1)
  String nameTurk;
  // late List<String> nameTurk = [
  //   "Awtomatlaşdyrmak",
  //   "Abonent",
  //   "Abonent karzy",
  //   "Abunalyk tölegi",
  //   "Bank amallaryny awtomatlaşdyrmak",
  //   "Maglumatlar bazasy",
  //   "Bank karzy",
  //   "Balans",
  //   "Kagyzsyz tölegler",
  //   "Nagt däl pul",
  //   "Nagt däl tölegler",
  //   "Balans: aktiw we jogapkärçilik balansy",
  //   "Işewürlik",
  //   "Iş meýilnamasy",
  //   "Kapitalizasiýasy",
  //   "Girdejiniň, girdejiniň kapitalizasiýasy",
  // ];
  // factory EconomicTerms.fromJson(Map<String, dynamic> json) {
  //   return EconomicTerms(
  //     nameTurk: json["nameTurk"],
  //     nameRus: json["nameRus"],
  //   );
  // }
  Map<String, dynamic> toJson() {
    return {
      "nameTurk": nameTurk,
      "nameRus": nameRus,
    };
  }

  static fromJson(Map<String, dynamic> json) {
    return EconomicTerms(
      nameRus: json["nameRus"],
      nameTurk: json["nameTurk"],
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

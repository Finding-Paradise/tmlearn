import 'package:hive/hive.dart';


@HiveType(typeId: 3)
class EconomicTerms {
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
  factory EconomicTerms.fromJson(Map<String, dynamic> json) {
    return EconomicTerms(
      nameTurk: json["nameTurk"],
      nameRus: json["nameRus"],
    );
  }
}

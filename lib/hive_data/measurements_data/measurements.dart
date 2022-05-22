import 'package:hive/hive.dart';


@HiveType(typeId: 5)
class Measurements {
  Measurements({required this.nameRus, required this.nameTurk});

  @HiveField(0)
  String nameRus;
  // late List<String> nameRus = [
  //   "Впереди",
  //   "Позади",
  //   "Левый",
  //   "Правый",
  //   "Вверх",
  //   "Вниз",
  //   "Горизонтальный",
  //   "Вертикальный",
  //   "Верх (чего-либо)",
  //   "Низ (дно)",
  //   "Внизу (чего-либо)",
  //   "Длинный",
  //   "Короткий",
  //   "Квадрат",
  //   "Треугольный",
  //   "Круглый (круг)",
  //   "Кубический",
  //   "Прямоугольный",
  //   "Толстый",
  //   "Тонкий",
  //   "Большой",
  //   "Маленький",
  //   "Центр",
  //   "Рядом со столом",
  //   "Над крышей",
  //   "Под капотом",
  //   "Перед тобой",
  //   "16 килограмм",
  //   "225 миллиметров",
  //   "5 тонн",
  //   "7 метров",
  //   "8 сантиметров",
  // ];

  @HiveField(1)
  String nameTurk;
  // late List<String> nameTurk = [
  //   "Öňde, öňünde",
  //   "Yzda",
  //   "Çep, sol",
  //   "Sag",
  //   "Ýokary",
  //   "Aşak",
  //   "Gorizontal, kese",
  //   "Dik, dikligine",
  //   "Depe, ýokary",
  //   "Aşak, aşagy",
  //   "Aşakda, pesde",
  //   "Uzyn",
  //   "Gysga",
  //   "Kwadrat, inedördül",
  //   "Üç burçly",
  //   "Tegelek",
  //   "Kub, kub görnüşli",
  //   "Gönüburçly",
  //   "Ýogyn, galyň, semiz",
  //   "Inçe, ýuka, ýukajyk",
  //   "Uly",
  //   "Kiçi",
  //   "Merkez",
  //   "Stoluň ýanynda",
  //   "Tamyň üstünde",
  //   "Kapotyň aşagynda",
  //   "Seniň öňüňde",
  //   "16 kilogram",
  //   "225 millimetr",
  //   "5 tonna",
  //   "7 metr",
  //   "8 santimetr",
  // ];
  factory Measurements.fromJson(Map<String, dynamic> json) {
    return Measurements(
      nameTurk: json["nameTurk"],
      nameRus: json["nameRus"],
    );
  }
}

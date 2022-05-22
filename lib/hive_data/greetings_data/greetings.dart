
import 'package:hive/hive.dart';


@HiveType(typeId: 4)
class Greetings {
  Greetings({required this.nameRus, required this.nameTurk});

  @HiveField(0)
  String nameRus;
  // late List<String> nameRus = [
  //   "Господин...",
  //   "Госпожа...",
  //   "Брат...",
  //   "Сестра...",
  //   "Девушка...",
  //   "Молодой человек...",
  //   "Мальчик...",
  //   "Дорогие друзья!",
  //   "Уважаемые коллеги!",
  //   "Дети!",
  // ];

  @HiveField(1)
  String nameTurk;
  // late List<String> nameTurk = [
  //   "Jenap...",
  //   "Hanum...",
  //   "Dogan...",
  //   "Aýal-dogan, dogan...",
  //   "Gyz...",
  //   "Ýigit...",
  //   "Oglan...",
  //   "Gadyrly dostlar!",
  //   "Hormatly kärdeşler!",
  //   "Çagalar!",
  // ];
  factory Greetings.fromJson(Map<String, dynamic> json) {
    return Greetings(
      nameTurk: json["nameTurk"],
      nameRus: json["nameRus"],
    );
  }
}

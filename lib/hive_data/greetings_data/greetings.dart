import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

import '../data.dart';

@HiveType(typeId: 4)
class Greetings extends Equatable implements Phrases {
  Greetings({required this.nameRus, required this.nameTurk});

  @override
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

  @override
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
  // factory Greetings.fromJson(Map<String, dynamic> json) {
  //   return Greetings(
  //     nameTurk: json["nameTurk"],
  //     nameRus: json["nameRus"],
  //   );
  // }
  @override
  Map<String, dynamic> toJson() {
    return {
      "nameTurk": nameTurk,
      "nameRus": nameRus,
    };
  }

  static fromJson(Map<String, dynamic> json) {
    return Greetings(
      nameRus: json["nameRus"],
      nameTurk: json["nameTurk"],
    );
  }

  @override
  String toString() {
    return "$nameRus:$nameTurk";
  }

  @override
  List<Object?> get props => [nameRus, nameTurk];
}

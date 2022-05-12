import 'package:hive/hive.dart';

part 'greetings.g.dart';

@HiveType(typeId: 4)
class Greetings {
  @HiveField(0)
  late List<String> nameRus = [
    "Господин...",
    "Госпожа...",
    "Брат...",
    "Сестра...",
    "Девушка...",
    "Молодой человек...",
    "Мальчик...",
    "Дорогие друзья!",
    "Уважаемые коллеги!",
    "Дети!",
  ];

  @HiveField(1)
  late List<String> nameTurk = [
    "Jenap...",
    "Hanum...",
    "Dogan...",
    "Aýal-dogan, dogan...",
    "Gyz...",
    "Ýigit...",
    "Oglan...",
    "Gadyrly dostlar!",
    "Hormatly kärdeşler!",
    "Çagalar!",
  ];
}

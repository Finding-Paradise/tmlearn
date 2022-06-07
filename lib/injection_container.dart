import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tmlearn/logic/favorite_cubit.dart';

final sl = GetIt.instance;
init() async {
  sl.registerFactory(() => FavoriteCubit(sl()));
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}

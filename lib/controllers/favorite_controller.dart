import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/widgets/icons_row.dart';

class FavoriteController extends GetxController {
  void addToFavorites({required nameRus}) {
    Get.snackbar(
      'Added to favorites',
      '$nameRus has been added',
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
      colorText: Colors.white,
      backgroundColor: backgroundColor,
      isDismissible: true,
    );
  }

  void removeFromFavorites({required nameRus}) {
    Get.snackbar(
      'Removed from favorites',
      '$nameRus has been removed',
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
      colorText: Colors.white,
      backgroundColor: backgroundColor,
      isDismissible: true,
    );
  }
}

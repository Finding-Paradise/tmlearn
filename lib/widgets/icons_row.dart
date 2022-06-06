import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tmlearn/controllers/favorite_controller.dart';

class IconRow extends StatefulWidget {
  final String nameRus;
  final String nameTurk;
  IconRow({Key? key, required this.nameRus, required this.nameTurk})
      : super(key: key);

  bool isPressed = false;

  List favorites = [];
  List favorites_updated = [];
  @override
  State<IconRow> createState() => _IconRowState();
}

class _IconRowState extends State<IconRow> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon(Icons.share, color: primaryColor, size: 30.0),
        // Icon(Icons.content_copy, color: primaryColor, size: 25.0),
        // Icon(Icons.favorite_border, color: primaryColor, size: 30.0),
        // Icon(Icons.volume_up, color: primaryColor, size: 30.0),
        // IconButton(onPressed: () {}, icon: Icon(Icons.share, color: primaryColor), iconSize: 30,),
        // IconButton(onPressed: () {
        //   Clipboard.setData(const ClipboardData(text: 'Copied succesfully!'));
        // }, icon: Icon(Icons.content_copy, color: primaryColor), iconSize: 25,),
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: IconButton(
            onPressed: () {
              _setFavorite(widget.nameRus);
            },
            icon: Icon(Icons.favorite,
                color: (widget.isPressed)
                    ? const Color(0xFFB62D1B)
                    : primaryColor),
            iconSize: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.volume_up, color: primaryColor),
            iconSize: 30,
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  Future<void> _setFavorite(nameRus) async {
    final prefs = await SharedPreferences.getInstance();
    // await prefs.setString('fav', nameRus);
    setState(() {
      if (!widget.favorites.contains(nameRus)) {
        widget.favorites.add(nameRus);
        widget.isPressed = true;
        FavoriteController().addToFavorites(nameRus: widget.nameRus);
      } else {
        prefs.remove('fav');
        widget.favorites.remove(nameRus);
        widget.isPressed = false;
        FavoriteController().removeFromFavorites(nameRus: widget.nameRus);
      }
      log(widget.favorites.toString());
    });
  }
}

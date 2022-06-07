import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/hive_data/common_phrases_data/common_phrases.dart';
import 'package:tmlearn/logic/favorite_cubit.dart';

import '../hive_data/data.dart';

class IconRow extends StatefulWidget {
  IconRow({Key? key, required this.phrase}) : super(key: key);
  Phrases phrase;

  @override
  State<IconRow> createState() => _IconRowState();
}

class _IconRowState extends State<IconRow> {
  bool isPressed = false;

  @override
  void initState() {
    super.initState();
    log(widget.phrase.toString());
    setState(() {
      isPressed = BlocProvider.of<FavoriteCubit>(context)
          .is_favorite(widget.phrase);
    });
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
              setState(() => isPressed = !isPressed);
              isPressed
                  ? BlocProvider.of<FavoriteCubit>(context)
                      .add_favorite(widget.phrase)
                  : BlocProvider.of<FavoriteCubit>(context)
                      .delete_favorite(widget.phrase);
              // BlocProvider.of<FavoriteCubit>(context).get_favorites();
            },
            icon: Icon(Icons.favorite,
                color: (isPressed) ? const Color(0xFFB62D1B) : primaryColor),
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
}

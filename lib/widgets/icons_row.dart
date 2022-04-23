import 'package:flutter/material.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:flutter/services.dart';
class IconRow extends StatelessWidget {
  const IconRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon(Icons.share, color: primaryColor, size: 30.0),
        // Icon(Icons.content_copy, color: primaryColor, size: 25.0),
        // Icon(Icons.favorite_border, color: primaryColor, size: 30.0),
        // Icon(Icons.volume_up, color: primaryColor, size: 30.0),
        IconButton(onPressed: () {}, icon: Icon(Icons.share, color: primaryColor, size: 30.0)),
        IconButton(onPressed: () {
          Clipboard.setData(const ClipboardData(text: 'Copied succesfully!'));
        }, icon: Icon(Icons.content_copy, color: primaryColor, size: 25.0)),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border, color: primaryColor, size: 30.0)),
        IconButton(onPressed: () {}, icon: Icon(Icons.volume_up, color: primaryColor, size: 30.0)),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

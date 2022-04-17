import 'package:flutter/material.dart';
import 'package:tmlearn/global_variables.dart';

class IconRow extends StatelessWidget {
  const IconRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.share, color: primaryColor, size: 30.0,),
        Icon(Icons.content_copy, color: primaryColor, size: 25.0,),
        Icon(Icons.favorite, color: primaryColor, size: 30.0,),
        Icon(Icons.volume_up, color: primaryColor, size: 30.0,)
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

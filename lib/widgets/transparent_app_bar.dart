import 'package:flutter/material.dart';

class TransparentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TransparentAppBar({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(
        title ?? "Title",
        style: const TextStyle(
          color: Color(0xFFEBC811),
          fontSize: 30,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 17),
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Color(0xFFEBC811),
            ),
          ),
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/TL.png", fit: BoxFit.fill,),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(58);
}

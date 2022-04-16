import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmlearn/global_variables.dart';

class ArietTransparentBar extends StatelessWidget implements PreferredSizeWidget {
  const ArietTransparentBar({Key? key, this.titleRus, this.titleTurk})
      : super(key: key);
  final String? titleRus;
  final String? titleTurk;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 3.0),
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Color(0xFFEBC811),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/TL.png", fit: BoxFit.fill,),
              ),
            ),
          )
        ],
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: GoogleFonts.lato(
              textStyle: const TextStyle(fontSize: 25.0),
            ),
            children: [
              TextSpan(
                text: titleRus ?? 'Title',
                style: TextStyle(color: primaryColor),
              ),
              TextSpan(
                text: titleTurk ?? 'Title',
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(71.0);
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmlearn/global_variables.dart';

class CustomTransparentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTransparentAppBar({Key? key, @required this.titleRus, @required this.titleTurk})
      : super(key: key);
  final String? titleRus, titleTurk;
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
            heroTag: 'btn-back',
            backgroundColor: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 3.0),
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: primaryColor,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: FloatingActionButton.small(
              heroTag: 'btn-drawer',
              backgroundColor: Colors.black,
              disabledElevation: 0,
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/TL.png", fit: BoxFit.fill,),
                ),
              ),
            ),
          )
        ],
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(fontSize: 25.0),
            ),
            children: [
              TextSpan(
                text: titleRus ?? '',
                style: TextStyle(color: primaryColor),
              ),
              TextSpan(
                text: titleTurk ?? '',
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

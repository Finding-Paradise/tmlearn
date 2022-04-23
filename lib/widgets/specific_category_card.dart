import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/widgets/custom_transparent_app_bar.dart';

class SpecificCategoryCardWidget extends StatefulWidget {
  const SpecificCategoryCardWidget({Key? key}) : super(key: key);

  @override
  State<SpecificCategoryCardWidget> createState() =>
      _SpecificCategoryCardWidgetState();
}

class _SpecificCategoryCardWidgetState
    extends State<SpecificCategoryCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomTransparentAppBar(titleRus: '', titleTurk: '',),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 271.0,
                child: Card(
                  color: secondaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Column(
                    children: [
                      Text(
                        'Господин...',
                        style: GoogleFonts.nunito(
                          fontSize: 30.0,
                          textStyle: TextStyle(color: primaryColor),
                        ),
                      ),
                      const Divider(height: 60),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, bottom: 30),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.volume_up,
                            color: primaryColor,
                            size: 50,
                          ),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(50),
              child: Row(
                children: [
                  FloatingActionButton(onPressed: () {},backgroundColor: Colors.black, child: Icon(Icons.arrow_back, color: primaryColor, size: 40,)),
                  FloatingActionButton(onPressed: () {},backgroundColor: Colors.black, child: Icon(Icons.restart_alt_outlined, color: primaryColor, size: 40,)),
                  FloatingActionButton(onPressed: () {},backgroundColor: Colors.black, child: Icon(Icons.arrow_forward, color: primaryColor, size: 40,)),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
      backgroundColor: backgroundColor,
    );
  }
}

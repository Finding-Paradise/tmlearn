import 'package:flutter/material.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/widgets/navigation_drawer.dart';

import '../widgets/custom_transparent_app_bar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191034),
      appBar: const CustomTransparentAppBar(titleRus: 'История\n', titleTurk: 'Geçmiş',),
      endDrawer: const NavigationDrawerWidget(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 44,
                margin: EdgeInsets.symmetric(vertical: 3, horizontal: 18),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, top: 12, bottom: 9),
                      child: Text(
                        'Школа',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Nunito',
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: IconButton(onPressed: () {}, icon: Icon(Icons.history, color: primaryColor,)),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

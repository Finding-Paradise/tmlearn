import 'package:flutter/material.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/widgets/custom_transparent_app_bar.dart';
import 'package:tmlearn/widgets/navigation_drawer.dart';
import 'package:tmlearn/controllers/favorite_controller.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const CustomTransparentAppBar(titleRus: 'Избранные\n', titleTurk: 'Halananlar'),
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
                        'bra',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Nunito',
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite, color: Color(0xFFB62D1B),)),
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

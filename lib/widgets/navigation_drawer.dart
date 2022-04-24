import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/pages/categories/categories_nav_page.dart';
import 'package:tmlearn/pages/dictionary_page.dart';
import 'package:tmlearn/pages/favorite_page.dart';
import 'package:tmlearn/pages/history_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  final Color drawerItemsColor = const Color(0xFF909061);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xB1000000),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: primaryColor,
                ),
                iconSize: 35,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CategoryNavPage();
              }));
            },
            child: ListTile(
              leading: Icon(
                Icons.school_outlined,
                color: drawerItemsColor,
              ),
              title: Text(
                'Разделы',
                style: GoogleFonts.nunito(
                  fontSize: 30.0,
                  textStyle: TextStyle(color: drawerItemsColor),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DictionaryPage();
              }));
            },
            child: ListTile(
              leading: Icon(
                Icons.menu_book_outlined,
                color: drawerItemsColor,
              ),
              title: Text(
                'Словарь',
                style: GoogleFonts.nunito(
                  fontSize: 30.0,
                  textStyle: TextStyle(color: drawerItemsColor),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FavoritePage();
              }));
            },
            child: ListTile(
              leading: Icon(
                Icons.favorite_outlined,
                color: drawerItemsColor,
              ),
              title: Text(
                'Избранное',
                style: GoogleFonts.nunito(
                  fontSize: 30.0,
                  textStyle: TextStyle(color: drawerItemsColor),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HistoryPage();
              }));
            },
            child: ListTile(
              leading: Icon(
                Icons.history_outlined,
                color: drawerItemsColor,
              ),
              title: Text(
                'История',
                style: GoogleFonts.nunito(
                  fontSize: 30.0,
                  textStyle: TextStyle(color: drawerItemsColor),
                ),
              ),
            ),
          ),
          const Divider(
            height: 100,
            color: Colors.transparent,
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.info,
              color: drawerItemsColor,
            ),
            label: Text(
              'Сообщить об ошибке',
              style: GoogleFonts.nunito(
                fontSize: 18,
                textStyle: TextStyle(color: drawerItemsColor),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 15),
            child: TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.star_outlined,
                color: drawerItemsColor,
              ),
              label: Text(
                'Оценить приложение',
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  textStyle: TextStyle(color: drawerItemsColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

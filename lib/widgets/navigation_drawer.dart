import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              Navigator.pop(context);
              Get.to(CategoryNavPage());
            },
            child: ListTile(
              leading: Icon(
                Icons.school_outlined,
                color: drawerItemsColor,
              ),
              title: Text(
                'Разделы',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 30,
                  color: drawerItemsColor,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Get.to(const DictionaryPage());
            },
            child: ListTile(
              leading: Icon(
                Icons.menu_book_outlined,
                color: drawerItemsColor,
              ),
              title: Text(
                'Словарь',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 30,
                  color: drawerItemsColor,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Get.to(const FavoritePage());
            },
            child: ListTile(
              leading: Icon(
                Icons.favorite_outlined,
                color: drawerItemsColor,
              ),
              title: Text(
                'Избранное',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 30,
                  color: drawerItemsColor,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Get.to(const HistoryPage());
            },
            child: ListTile(
              leading: Icon(
                Icons.history_outlined,
                color: drawerItemsColor,
              ),
              title: Text(
                'История',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 30,
                  color: drawerItemsColor,
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
            label: Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Text(
                'Сообщить об ошибке',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 18,
                  color: drawerItemsColor,
                ),
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
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 18,
                  color: drawerItemsColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

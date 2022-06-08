import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:tmlearn/hive_data/data.dart';
import 'package:tmlearn/widgets/navigation_drawer.dart';

import '../pages/dictionary_info_page.dart';
import 'custom_transparent_app_bar.dart';

enum CardType {
  history,
  favorite,
}

class DictionaryCard extends StatelessWidget {
  const DictionaryCard(
      {Key? key,
      this.name,
      required this.cardType,
      this.p,
      this.onCardTap,
      this.onIconTap})
      : super(key: key);

  final String? name;
  final Phrases? p;
  final CardType cardType;
  final Function? onCardTap, onIconTap;

  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Tap");

        if (p != null) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Scaffold(
              backgroundColor: backgroundColor,
              endDrawer: const NavigationDrawerWidget(),
              appBar: const CustomTransparentAppBar(
                titleRus: 'Избранные\n',
                titleTurk: 'Halananlar',
              ),
              body: Container(
                // color: backgroundColor,
                child: Padding(
                  // padding: const EdgeInsets.all(8.0),

                  padding: const EdgeInsets.symmetric(horizontal: 17) +
                      const EdgeInsets.only(top: 20, bottom: 32),
                  child: DictionaryInfoPage(p!),
                ),
              ),
            );
          }));
        }
      },
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 71, 58, 99),
          borderRadius: BorderRadius.circular(11.39),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 12, bottom: 12),
              child: Text(
                name ?? "Dictionary",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const Spacer(),
            actionButton(cardType),
          ],
        ),
      ),
    );
  }

  Widget actionButton(CardType type) {
    switch (type) {
      case CardType.favorite:
        return LikeButton(
          isLiked: true,
          onTap: (bool isLiked) async {
            onIconTap!();
            return false;
          },
          likeBuilder: (bool isLiked) {
            return Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.favorite_rounded,
                color: isLiked ? Colors.red : Colors.grey,
                size: 25,
              ),
            );
          },
        );
      case CardType.history:
        return IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            onIconTap!();
          },
          icon: const Icon(
            Icons.history,
            size: 25,
            color: Color(0xFFEBC811),
          ),
        );
    }
  }
}

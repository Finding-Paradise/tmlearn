import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

enum CardType {
  History,
  Favorite,
}

class DictionaryCard extends StatelessWidget {
  const DictionaryCard(
      {Key? key, this.name, required this.cardType, this.onCardTap, this.onIconTap})
      : super(key: key);

  final String? name;
  final CardType cardType;
  final Function? onCardTap, onIconTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardTap!(),
      child: Container(
        height: 44,
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 3),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 71, 58, 99),
          borderRadius: BorderRadius.circular(11.39),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 13, bottom: 12),
              child: Text(
                name ?? "Dictionary",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: actionButton(cardType),
            ),
          ],
        ),
      ),
    );
  }

  Widget actionButton(CardType type) {
    switch (type) {
      case CardType.Favorite:
        return LikeButton(
          isLiked: true,
          onTap: (bool isLiked) async {
            onIconTap!();
            return false;
          },
          likeBuilder: (bool isLiked) {
            return Icon(
              Icons.favorite_rounded,
              color: isLiked ? Colors.redAccent : Colors.grey,
              size: 25,
            );
          },
        );
      case CardType.History:
        return IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            onIconTap!();
          },
          icon: const Icon(
            Icons.history,
            size: 18,
            color: const Color(0xFFEBC811),
          ),
        );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/widgets/custom_transparent_app_bar.dart';
import 'package:tmlearn/widgets/navigation_drawer.dart';

import './widgets/option_card.dart';

class DictionaryTestPage extends StatelessWidget {
  DictionaryTestPage({Key? key}) : super(key: key);

  final options = [
    {
      "text": "Hanym",
      "isCorrect": false,
    },
    {
      "text": "Ezizim",
      "isCorrect": false,
    },
    {
      "text": "Jenap",
      "isCorrect": true,
    },
    {
      "text": "Hormalty",
      "isCorrect": false,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191034),
      appBar: const CustomTransparentAppBar(titleRus: '', titleTurk: '',),
      endDrawer: const NavigationDrawerWidget(),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 18) + const EdgeInsets.only(top: 40),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.check,
                        size: 32.5,
                        color: backgroundColor,
                      ),
                    ),
                    const SizedBox(width: 14),
                    const Text(
                      "0",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 35,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "0",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(width: 14),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.close,
                        size: 32.5,
                        color: backgroundColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 38),
              Container(
                width: double.infinity,
                height: 271.0,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text(
                      "Господин...",
                      style: TextStyle(
                        fontSize: 30,
                        color: primaryColor
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.volume_up,
                        color: primaryColor,
                      ),
                      iconSize: 74,
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
              ),
              const Divider(height: 50),
              Expanded(
                child: ListView.separated(
                  itemCount: options.length,
                  itemBuilder: (context, index) => OptionCard(
                    id: index,
                    text: options[index]["text"] as String,
                    isCorrect: options[index]["isCorrect"] as bool,
                    onTap: (int) {},
                  ),
                  separatorBuilder: (context, index) => const SizedBox(height: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

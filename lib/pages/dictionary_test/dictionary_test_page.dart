import 'package:flutter/material.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/widgets/ariet_transparent_app_bar.dart';

import './widgets/option_card.dart';

class DictionaryTestPage extends StatelessWidget {
  DictionaryTestPage({Key? key}) : super(key: key);

  var options = [
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
      appBar: ArietTransparentBar(),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 18) + EdgeInsets.only(top: 40),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 19),
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
                    SizedBox(width: 14),
                    Text(
                      "0",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 35,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "0",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(width: 14),
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
              SizedBox(height: 38),
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
                      padding: EdgeInsets.only(right: 45),
                      onPressed: () {},
                      icon: Icon(
                        Icons.volume_up,
                        color: primaryColor,
                        size: 74,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
              ),
              Divider(height: 50),
              Expanded(
                child: ListView.separated(
                  itemCount: options.length,
                  itemBuilder: (context, index) => OptionCard(
                    id: index,
                    text: options[index]["text"] as String,
                    isCorrect: options[index]["isCorrect"] as bool,
                    onTap: (int) {},
                  ),
                  separatorBuilder: (context, index) => SizedBox(height: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

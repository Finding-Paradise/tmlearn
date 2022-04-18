import 'package:flutter/material.dart';

import './widgets/option_card.dart';
import '../../../widgets/transparent_app_bar.dart';

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
      appBar: TransparentAppBar(title: ""),
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
                        color: const Color(0xFF191034),
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
                        color: const Color(0xFF191034),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 38),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF473A63),
                  borderRadius: BorderRadius.circular(11.39),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 63),
                    Text(
                      "Господин...",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFFEBC811),
                      ),
                    ),
                    SizedBox(height: 74),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        color: Color(0xFFEBC811),
                        size: 74,
                      ),
                    ),
                    SizedBox(height: 19.5),
                  ],
                ),
              ),
              Spacer(),
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

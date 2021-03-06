import 'dart:convert';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tcard/tcard.dart';
import 'package:tmlearn/global_variables.dart';
import 'package:tmlearn/hive_data/data.dart';
import 'package:tmlearn/widgets/custom_transparent_app_bar.dart';
import 'package:tmlearn/widgets/navigation_drawer.dart';
class SpecificCategoryCardWidget extends StatefulWidget {
  const SpecificCategoryCardWidget({Key? key, required this.index})
      : super(key: key);
  final int index;
  @override
  State<SpecificCategoryCardWidget> createState() =>
      _SpecificCategoryCardWidgetState();
}
class _SpecificCategoryCardWidgetState
    extends State<SpecificCategoryCardWidget> {
  TCardController _controller = TCardController();
  FlipCardController _controllerF = FlipCardController();
  bool is_flipped = false;
  bool is_end = false;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  final List routeToPage = [
    "assets/app_sections_data/common_phrases.json",
    "assets/app_sections_data/greetings.json",
    "assets/app_sections_data/acquaintance.json",
    "assets/app_sections_data/questions.json",
    "assets/app_sections_data/personal_data.json",
    "assets/app_sections_data/measurements_and_directions.json",
    "assets/app_sections_data/time_and_date.json",
    "assets/app_sections_data/economic_terms.json",
  ];
  List<Phrases> _items = [];
  Future<void> readJson() async {
    final response = await rootBundle.loadString(routeToPage[widget.index]);
    var data = await jsonDecode(response);
    setState(() {
      for (var element in data["items"]) {
        _items.add(Phrases.fromJson(element));
      }
      _items;
      _controller;
      cards = List.generate(
        _items.length,
        (index) {
          return FlipCard(
            controller: _controllerF,
            onFlipDone: (x) {
              is_flipped = x;
            },
            flipOnTouch: false,
            fill: Fill
                .fillBack, // Fill the back side of the card to make in the same size as the front.
            front: infoCardWidget(text: _items[index].nameRus),
            back: infoCardWidget(
              text: _items[index].nameTurk,
            ),
          );
        },
      );
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  List<Widget> cards = [
    // ...List.generate(
    //     1, (index) => FlipCard(front: Text("Hello"), back: Text("Back")))
  ];

  var test = [Phrases("??", "Men"), Phrases("??", "Men")];

  @override
  Widget build(BuildContext context) {
    print(cards);
    print(_items);
    return Builder(builder: (context) {
      return Scaffold(
        appBar: const CustomTransparentAppBar(
          titleRus: '',
          titleTurk: '',
        ),
        endDrawer: const NavigationDrawerWidget(),
        body: cardsPage(),
        backgroundColor: backgroundColor,
      );
    });
  }

  SafeArea cardsPage() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            if (is_end)
              const Text(
                "End",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            if (cards.length != 0) getCards(),
            Container(
              padding: const EdgeInsets.all(50),
              child: Row(
                children: [
                  FloatingActionButton(
                      heroTag: 'card-btn-back',
                      onPressed: () {
                        _controller.back();
                        if (is_end) {
                          setState(() {
                            is_end = !is_end;
                          });
                        }
                        if (is_flipped) {
                          _controllerF.toggleCard();
                          is_flipped = !is_flipped;
                        }
                      },
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.arrow_back,
                        color: primaryColor,
                        size: 40,
                      )),
                  FloatingActionButton(
                      heroTag: 'card-btn-restart',
                      onPressed: () {
                        _controllerF.toggleCard();
                        // _controllerF.
                      },
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.restart_alt_outlined,
                        color: primaryColor,
                        size: 40,
                      )),
                  FloatingActionButton(
                      heroTag: 'card-btn-forward',
                      onPressed: () {
                        _controller.forward();
                        if (is_flipped) {
                          _controllerF.toggleCard();
                          is_flipped = !is_flipped;
                        }
                      },
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.arrow_forward,
                        color: primaryColor,
                        size: 40,
                      )),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );
  }

  SingleChildScrollView getCards() {
    return SingleChildScrollView(
      child: TCard(
        cards: cards,
        controller: _controller,
        onEnd: () {
          setState(() {
            is_end = true;
          });
        },
      ),
    );
  }
}
class infoCardWidget extends StatelessWidget {
  const infoCardWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 290,
        padding: const EdgeInsets.only(left: 5, right: 5),
        width: double.infinity,
        // height: 280.0,
        child: Card(
          color: secondaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                // color: Colors.black,
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    // overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontFamily: 'Nunito', fontSize: 30, color: primaryColor)
                  ),
                ),
              ),
              const Divider(height: 20, color: Colors.transparent,),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.volume_up,
                    color: primaryColor,
                  ),
                  iconSize: 50,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ),
      ),
    );
  }
}
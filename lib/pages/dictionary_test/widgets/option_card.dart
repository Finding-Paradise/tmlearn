import 'package:flutter/material.dart';

enum OptionState {
  NotChosen,
  Correct,
  Wrong,
}

class OptionCard extends StatefulWidget {
  const OptionCard(
      {Key? key,
      required this.id,
      this.text,
      required this.isCorrect,
      this.onTap})
      : super(key: key);

  final int id;
  final String? text;
  final bool isCorrect;
  final Function(int)? onTap;

  @override
  State<OptionCard> createState() => _OptionCardState();
}

class _OptionCardState extends State<OptionCard> {
  OptionState currentOptionState = OptionState.NotChosen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.onTap!(widget.id);
          currentOptionState =
              widget.isCorrect ? OptionState.Correct : OptionState.Wrong;
        });
      },
      child: AnimatedContainer(
        width: double.infinity,
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.only(top: 10, bottom: 6),
        decoration: BoxDecoration(
          color: getColorsFromOptionState(currentOptionState),
          borderRadius: BorderRadius.circular(11.4),
        ),
        child: Center(
          child: Text(
            widget.text ?? "Option",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Color getColorsFromOptionState(OptionState optionState) {
    switch (optionState) {
      case OptionState.NotChosen:
        return Color(0xFF473A63);
      case OptionState.Correct:
        return Colors.green;
      case OptionState.Wrong:
        return Colors.red;
    }
  }
}
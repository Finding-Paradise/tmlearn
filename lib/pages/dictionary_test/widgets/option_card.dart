
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmlearn/logic/current_test_cubit.dart';

enum OptionState {
  notChosen,
  correct,
  wrong,
}

class OptionCard extends StatefulWidget {
  const OptionCard(
      {Key? key,
      required this.id,
      required this.optionState,
      this.text,
      required this.isCorrect,
      this.onTap})
      : super(key: key);

  final int id;
  final String? text;
  final bool isCorrect;
  final Function(int)? onTap;
  final OptionState optionState;

  @override
  State<OptionCard> createState() => _OptionCardState();
}

class _OptionCardState extends State<OptionCard> {
  late OptionState currentOptionState;

  @override
  void initState() {
    super.initState();
    currentOptionState = widget.optionState;
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool to_call = true;
  @override
  Widget build(BuildContext context) {
    bool isAnswered =
        BlocProvider.of<CurrentTestCubit>(context).state.answered_correctly;
    if (isAnswered) {
      if (widget.isCorrect) {
        setState(() {
          currentOptionState = OptionState.correct;
        });
      }
    }
    return GestureDetector(
        onTap: () {
          // setState(() {
          //   print(widget.isCorrect);
          if (widget.onTap != null) widget.onTap!(widget.id);

          setState(() {
            currentOptionState =
                widget.isCorrect ? OptionState.correct : OptionState.wrong;

            // if (currentOptionState == OptionState.wrong) {
            //   // BlocProvider.of<CurrentTestCubit>(context).answered_correctly =
            //   //     false;
            //   // BlocProvider.of<CurrentTestCubit>(context).update();
            // }

            currentOptionState == OptionState.correct
                ? BlocProvider.of<CurrentTestCubit>(context).correct_answers +=
                    1
                : BlocProvider.of<CurrentTestCubit>(context)
                    .incorrect_answers += 1;
            BlocProvider.of<CurrentTestCubit>(context).answered();
            Future.delayed(const Duration(milliseconds: 800), () {
              BlocProvider.of<CurrentTestCubit>(context).next_item();
            });
          });
        },
        child: AnimatedContainer(
          onEnd: () {
            if (to_call) {
              setState(() {
                currentOptionState = OptionState.notChosen;
                // if (is_answered) {
                //   BlocProvider.of<CurrentTestCubit>(context).next_item();
                // }
                BlocProvider.of<CurrentTestCubit>(context).non_answered();
              });
            }
            to_call = !to_call;

            // BlocProvider.of<CurrentTestCubit>(context).can_change = true;
          },
          width: double.infinity,
          duration: const Duration(milliseconds: 500),
          padding: const EdgeInsets.only(top: 10, bottom: 6),
          decoration: BoxDecoration(
            color: getColorsFromOptionState(currentOptionState),
            borderRadius: BorderRadius.circular(11.4),
          ),
          child: Center(
            child: Text(
              widget.text ?? "Option",
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }

  Color getColorsFromOptionState(OptionState optionState) {
    switch (optionState) {
      case OptionState.notChosen:
        return const Color(0xFF473A63);
      case OptionState.correct:
        return Colors.green;
      case OptionState.wrong:
        return Colors.red;
    }
  }
}

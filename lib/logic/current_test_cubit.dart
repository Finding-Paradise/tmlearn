import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'current_test_state.dart';

class CurrentTestCubit extends Cubit<int> {
  CurrentTestCubit() : super(0);
  int correct_answers = 0;
  int incorrect_answers = 0;
  next_item() {
    if (state < 3) emit(state.toInt() + 1);
  }

  prev_item() {
    emit(state.toInt() - 1);
  }

  initial() {
    correct_answers = 0;
    incorrect_answers = 0;
    emit(0);
  }
}

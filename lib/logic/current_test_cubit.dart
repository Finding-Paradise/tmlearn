import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'current_test_state.dart';

class CurrentTestCubit extends Cubit<Test> {
  CurrentTestCubit() : super(Test(0, true));
  int correct_answers = 0;
  int incorrect_answers = 0;

  next_item() {
    if (state.index < 3)
      emit(Test(state.index.toInt() + 1, state.answered_correctly));
  }

  // update() {
  //   next_item();
  //   prev_item();
  // }

  prev_item() {
    emit(Test(state.index.toInt() - 1, state.answered_correctly));
  }

  initial() {
    correct_answers = 0;
    incorrect_answers = 0;
    emit(Test(0, true));
  }
}

class Test extends Equatable {
  int index;
  bool answered_correctly;
  Test(this.index, this.answered_correctly);
  @override
  // TODO: implement props
  List<Object?> get props => [index, answered_correctly];
}

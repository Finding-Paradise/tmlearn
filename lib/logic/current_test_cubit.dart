import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'current_test_state.dart';

class CurrentTestCubit extends Cubit<Test> {
  CurrentTestCubit() : super(Test(0, false));
  int correct_answers = 0;
  int incorrect_answers = 0;

  next_item() async {
    emit(Test(state.index.toInt() + 1, state.answered_correctly));
  }

  answered() async {
    emit(Test(state.index, true));
  }

  non_answered() {
    emit(Test(state.index, false));
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
    emit(Test(0, false));
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

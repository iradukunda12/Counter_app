import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(super.initialState);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    if (state == 0) {
      return;
    }
    emit(state - 1);
  }
}

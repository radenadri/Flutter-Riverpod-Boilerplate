import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_app/models/counter_model.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, CounterModel>(
  (ref) => CounterNotifier(),
);

class CounterNotifier extends StateNotifier<CounterModel> {
  CounterNotifier() : super(CounterModel());

  void increment() {
    state = state.copyWith(counter: state.counter + 1);
  }

  void decrement() {
    state = state.copyWith(counter: state.counter - 1);
  }
}

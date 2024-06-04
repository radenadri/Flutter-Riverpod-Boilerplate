import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_counter_app/config/di.dart';

part 'counter_provider.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    final prefs = ref.read(sharedPrefs.future);
    prefs.then((value) {
      state = value.getInt('counter') ?? 0;
    });

    return state;
  }

  void increment() => state++;

  void decrement() {
    if (state > 0) {
      state--;
    } else {
      state = 0;
    }
  }
}

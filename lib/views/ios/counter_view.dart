import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_app/riverpod/providers/counter_provider.dart';

class CounterView extends ConsumerWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Counter App'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pressed the button ${ref.watch(counterProvider)} times.',
            ),
            const SizedBox(height: 20.0),
            CupertinoButton.filled(
              onPressed: () => ref.read(counterProvider.notifier).increment(),
              child: const Icon(CupertinoIcons.add),
            ),
            const SizedBox(height: 20.0),
            CupertinoButton.filled(
              onPressed: () => ref.read(counterProvider.notifier).decrement(),
              child: const Icon(CupertinoIcons.minus),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_app/providers/counter_provider.dart';

class CounterView extends ConsumerStatefulWidget {
  const CounterView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CounterViewState();
}

class _CounterViewState extends ConsumerState<CounterView> {
  @override
  Widget build(BuildContext context) {
    final counterRepo = ref.read(counterProvider.notifier);
    final counterState = ref.watch(counterProvider);

    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        // Uncomment to change the background color
        // backgroundColor: CupertinoColors.systemPink,
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Counter App'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You have pressed the button ${counterState.counter.toString()} times.',
              ),
              const SizedBox(height: 20.0),
              CupertinoButton.filled(
                onPressed: () => setState(() => counterRepo.increment()),
                child: const Icon(CupertinoIcons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

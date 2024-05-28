import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_app/models/number_trivia_model.dart';
import 'package:riverpod_counter_app/riverpod/providers/number_trivia_provider.dart';

class NumberTriviaView extends ConsumerWidget {
  const NumberTriviaView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<NumberTriviaModel> numberTrivia =
        ref.watch(getNumberTriviaProvider);

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Number Trivia App'),
      ),
      child: switch (numberTrivia) {
        AsyncData(:final value) => successWidget(value, ref),
        AsyncError(:final error) => errorWidget(error),
        _ => loadingWidget(),
      },
    );
  }

  Widget successWidget(NumberTriviaModel numberTrivia, WidgetRef ref) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numberTrivia.number.toString(),
              style: const TextStyle(fontSize: 50),
            ),
            const SizedBox(height: 20.0),
            Text(
              numberTrivia.text,
              style: const TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            CupertinoButton.filled(
              onPressed: () {
                // reload
                ref.refresh(getNumberTriviaProvider.future);
              },
              child: const Text('Load another number'),
            ),
          ],
        ),
      ),
    );
  }

  Widget errorWidget(Object error) {
    return Center(
      child: Text('Something when wrong : ${error.toString()}'),
    );
  }

  Widget loadingWidget() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoActivityIndicator(),
          SizedBox(height: 10),
          Text('Loading'),
        ],
      ),
    );
  }
}

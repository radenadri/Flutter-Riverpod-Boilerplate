import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_app/models/number_trivia_model.dart';
import 'package:riverpod_counter_app/riverpod/notifiers/number_trivia_notifier.dart';

class NumberTriviaView extends ConsumerStatefulWidget {
  const NumberTriviaView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NumberTriviaViewState();
}

class _NumberTriviaViewState extends ConsumerState<NumberTriviaView> {
  late TextEditingController inputNumberController;

  @override
  void initState() {
    super.initState();

    inputNumberController = TextEditingController();
  }

  @override
  void dispose() {
    inputNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<NumberTriviaModel> numberTrivia =
        ref.watch(numberTriviaProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Trivia App'),
      ),
      body: numberTrivia.when(
        skipLoadingOnRefresh: false,
        data: (numberTrivia) => successWidget(numberTrivia, ref),
        error: (error, stackTrace) => errorWidget(error),
        loading: () => loadingWidget(),
      ),
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
            TextField(
              controller: inputNumberController,
              keyboardType: TextInputType.number,
              // hint
              decoration: const InputDecoration(
                hintText: 'Enter a number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (inputNumberController.text.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Error'),
                      content: const Text('Please enter a number'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                  return;
                }

                ref
                    .read(numberTriviaProvider.notifier)
                    .getConcreteNumberTrivia(
                      int.parse(inputNumberController.text),
                    )
                    .then((value) {
                  inputNumberController.clear();
                  FocusScope.of(context).unfocus();
                });
              },
              child: const Text('Get concrete number'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                ref.invalidate(numberTriviaProvider);
              },
              child: const Text('Get random number'),
            ),
          ],
        ),
      ),
    );
  }

  Widget errorWidget(Object error) {
    Map<String, dynamic> errorMap = error as Map<String, dynamic>;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMap['statusCode'].toString(),
            style: const TextStyle(fontSize: 50),
          ),
          const SizedBox(height: 20.0),
          Text(errorMap['message']),
        ],
      ),
    );
  }

  Widget loadingWidget() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 10),
          Text('Loading'),
        ],
      ),
    );
  }
}

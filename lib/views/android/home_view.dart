import 'package:flutter/material.dart';
import 'package:riverpod_counter_app/views/android/counter_view.dart';
import 'package:riverpod_counter_app/views/android/number_trivia_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterView(),
                  ),
                );
              },
              child: const Text('Counter'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NumberTriviaView(),
                  ),
                );
              },
              child: const Text('Number Trivia'),
            ),
          ],
        ),
      ),
    );
  }
}

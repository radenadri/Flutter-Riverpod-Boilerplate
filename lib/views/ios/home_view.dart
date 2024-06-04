import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_counter_app/views/ios/counter_view.dart';
import 'package:riverpod_counter_app/views/ios/number_trivia_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Riverpod Demo'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton.filled(
              onPressed: () {
                GoRouter.of(context).pushNamed('counter');
              },
              child: const Text('Counter'),
            ),
            const SizedBox(height: 20.0),
            CupertinoButton.filled(
              onPressed: () {
                GoRouter.of(context).pushNamed('number_trivia');
              },
              child: const Text('Number Trivia'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:go_router/go_router.dart';
import 'package:riverpod_counter_app/views/ios/counter_view.dart' as ios;
import 'package:riverpod_counter_app/views/ios/home_view.dart' as ios;
import 'package:riverpod_counter_app/views/ios/number_trivia_view.dart' as ios;
import 'package:riverpod_counter_app/views/android/counter_view.dart'
    as android;
import 'package:riverpod_counter_app/views/android/home_view.dart' as android;
import 'package:riverpod_counter_app/views/android/number_trivia_view.dart'
    as android;

final iosRouter = GoRouter(
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const ios.HomeView(),
    ),
    GoRoute(
      name: 'counter',
      path: '/counter',
      builder: (context, state) => const ios.CounterView(),
    ),
    GoRoute(
      name: 'number_trivia',
      path: '/number_trivia',
      builder: (context, state) => const ios.NumberTriviaView(),
    ),
  ],
);

final androidRouter = GoRouter(
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const android.HomeView(),
    ),
    GoRoute(
      name: 'counter',
      path: '/counter',
      builder: (context, state) => const android.CounterView(),
    ),
    GoRoute(
      name: 'number_trivia',
      path: '/number_trivia',
      builder: (context, state) => const android.NumberTriviaView(),
    ),
  ],
);

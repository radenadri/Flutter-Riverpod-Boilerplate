import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_app/views/android/counter_view.dart'
    as android;
import 'package:riverpod_counter_app/views/ios/counter_view.dart' as ios;

void main() {
  // check if platform is ios or android
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    runApp(
      const ProviderScope(
        child: CupertinoApp(
          title: 'Flutter + Riverpod Boilerplate',
          theme: CupertinoThemeData(brightness: Brightness.light),
          home: ios.CounterView(),
        ),
      ),
    );
  } else if (defaultTargetPlatform == TargetPlatform.android) {
    runApp(
      ProviderScope(
        child: MaterialApp(
          title: 'Flutter + Riverpod Boilerplate',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.black54),
            useMaterial3: true,
          ),
          home: const android.CounterView(),
        ),
      ),
    );
  }
}

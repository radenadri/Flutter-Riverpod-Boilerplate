import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_app/config/routes.dart';

void main() {
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    runApp(
      ProviderScope(
        child: CupertinoApp.router(
          routerConfig: iosRouter,
          title: 'Flutter + Riverpod Boilerplate',
          theme: const CupertinoThemeData(brightness: Brightness.light),
        ),
      ),
    );
  } else if (defaultTargetPlatform == TargetPlatform.android) {
    runApp(
      ProviderScope(
        child: MaterialApp.router(
          routerConfig: androidRouter,
          title: 'Flutter + Riverpod Boilerplate',
          theme: ThemeData(
            colorSchemeSeed: Colors.green,
            useMaterial3: true,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_app/views/counter_view.dart';

void main() {
  runApp(
    const ProviderScope(
      child: CounterView(),
    ),
  );
}

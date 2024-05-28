import 'dart:convert';
import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_counter_app/config/constants.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_counter_app/models/number_trivia_model.dart';

part 'number_trivia_notifier.g.dart';

@riverpod
class NumberTrivia extends _$NumberTrivia {
  Future<NumberTriviaModel> _getRandomNumberTrivia() async {
    try {
      final response = await http.get(
        Uri.parse('$API_URL/random'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode != 200) {
        return Future.error({
          'success': false,
          'statusCode': response.statusCode,
          'message': 'Something when wrong, please try again',
        });
      }

      final numberTrivia = jsonDecode(response.body) as Map<String, dynamic>;

      return NumberTriviaModel.fromJson(numberTrivia);
    } catch (e) {
      return Future.error({
        'success': false,
        'message': e.toString(),
      });
    }
  }

  @override
  FutureOr<NumberTriviaModel> build() {
    return _getRandomNumberTrivia();
  }

  Future<void> getConcreteNumberTrivia(
    int number,
  ) async {
    try {
      state = const AsyncLoading();

      final response = await http.get(
        Uri.parse('$API_URL/$number'),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode != 200) {
        return Future.error({
          'success': false,
          'statusCode': response.statusCode,
          'message': 'Something when wrong, please try again',
        });
      }

      final numberTrivia = jsonDecode(response.body) as Map<String, dynamic>;

      state = AsyncData(NumberTriviaModel.fromJson(numberTrivia));
    } catch (e) {
      return Future.error({
        'success': false,
        'message': e.toString(),
      });
    }
  }
}

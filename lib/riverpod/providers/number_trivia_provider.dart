import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_counter_app/models/number_trivia_model.dart';

part 'number_trivia_provider.g.dart';

@riverpod
Future<NumberTriviaModel> getNumberTrivia(GetNumberTriviaRef ref) async {
  try {
    final response = await http.get(
      Uri.parse('http://numbersapi.com/random'),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    final numberTrivia = jsonDecode(response.body) as Map<String, dynamic>;

    return NumberTriviaModel.fromJson(numberTrivia);
  } catch (e) {
    throw Exception('Failed to get number trivia: $e');
  }
}

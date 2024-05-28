// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_trivia_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NumberTriviaModelImpl _$$NumberTriviaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NumberTriviaModelImpl(
      number: (json['number'] as num).toInt(),
      text: json['text'] as String,
      type: json['type'] as String,
      found: json['found'] as bool,
    );

Map<String, dynamic> _$$NumberTriviaModelImplToJson(
        _$NumberTriviaModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'text': instance.text,
      'type': instance.type,
      'found': instance.found,
    };

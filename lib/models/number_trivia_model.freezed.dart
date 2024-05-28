// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_trivia_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NumberTriviaModel _$NumberTriviaModelFromJson(Map<String, dynamic> json) {
  return _NumberTriviaModel.fromJson(json);
}

/// @nodoc
mixin _$NumberTriviaModel {
  int get number => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get found => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumberTriviaModelCopyWith<NumberTriviaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaModelCopyWith<$Res> {
  factory $NumberTriviaModelCopyWith(
          NumberTriviaModel value, $Res Function(NumberTriviaModel) then) =
      _$NumberTriviaModelCopyWithImpl<$Res, NumberTriviaModel>;
  @useResult
  $Res call({int number, String text, String type, bool found});
}

/// @nodoc
class _$NumberTriviaModelCopyWithImpl<$Res, $Val extends NumberTriviaModel>
    implements $NumberTriviaModelCopyWith<$Res> {
  _$NumberTriviaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? text = null,
    Object? type = null,
    Object? found = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      found: null == found
          ? _value.found
          : found // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NumberTriviaModelImplCopyWith<$Res>
    implements $NumberTriviaModelCopyWith<$Res> {
  factory _$$NumberTriviaModelImplCopyWith(_$NumberTriviaModelImpl value,
          $Res Function(_$NumberTriviaModelImpl) then) =
      __$$NumberTriviaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String text, String type, bool found});
}

/// @nodoc
class __$$NumberTriviaModelImplCopyWithImpl<$Res>
    extends _$NumberTriviaModelCopyWithImpl<$Res, _$NumberTriviaModelImpl>
    implements _$$NumberTriviaModelImplCopyWith<$Res> {
  __$$NumberTriviaModelImplCopyWithImpl(_$NumberTriviaModelImpl _value,
      $Res Function(_$NumberTriviaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? text = null,
    Object? type = null,
    Object? found = null,
  }) {
    return _then(_$NumberTriviaModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      found: null == found
          ? _value.found
          : found // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NumberTriviaModelImpl implements _NumberTriviaModel {
  _$NumberTriviaModelImpl(
      {required this.number,
      required this.text,
      required this.type,
      required this.found});

  factory _$NumberTriviaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumberTriviaModelImplFromJson(json);

  @override
  final int number;
  @override
  final String text;
  @override
  final String type;
  @override
  final bool found;

  @override
  String toString() {
    return 'NumberTriviaModel(number: $number, text: $text, type: $type, found: $found)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberTriviaModelImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.found, found) || other.found == found));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, text, type, found);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberTriviaModelImplCopyWith<_$NumberTriviaModelImpl> get copyWith =>
      __$$NumberTriviaModelImplCopyWithImpl<_$NumberTriviaModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NumberTriviaModelImplToJson(
      this,
    );
  }
}

abstract class _NumberTriviaModel implements NumberTriviaModel {
  factory _NumberTriviaModel(
      {required final int number,
      required final String text,
      required final String type,
      required final bool found}) = _$NumberTriviaModelImpl;

  factory _NumberTriviaModel.fromJson(Map<String, dynamic> json) =
      _$NumberTriviaModelImpl.fromJson;

  @override
  int get number;
  @override
  String get text;
  @override
  String get type;
  @override
  bool get found;
  @override
  @JsonKey(ignore: true)
  _$$NumberTriviaModelImplCopyWith<_$NumberTriviaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

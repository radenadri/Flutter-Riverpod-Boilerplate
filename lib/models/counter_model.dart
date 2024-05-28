import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_model.freezed.dart';
part 'counter_model.g.dart';

@freezed
class CounterModel with _$CounterModel {
  factory CounterModel({
    @Default(0) int counter,
  }) = _CounterModel;

  factory CounterModel.fromJson(Map<String, dynamic> json) =>
      _$CounterModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'forth_model.freezed.dart';

@freezed
class ForthModel with _$ForthModel {
  const factory ForthModel({
    @Default('Unknown') String fruit,
    @Default('') String activity,
  }) = _ForthModel;
}

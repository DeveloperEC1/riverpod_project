import 'package:freezed_annotation/freezed_annotation.dart';

part 'forth_model.freezed.dart';

@freezed
abstract class ForthModel with _$ForthModel {
  const factory ForthModel({
    @Default('Unknown') String fruit,
  }) = _ForthModel;
}

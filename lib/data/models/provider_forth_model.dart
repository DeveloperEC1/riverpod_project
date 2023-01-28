import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider_forth_model.freezed.dart';

@freezed
abstract class ProviderForthModel with _$ProviderForthModel {
  const factory ProviderForthModel({
    @Default('Unknown') String fruit,
  }) = _ProviderForthModel;
}

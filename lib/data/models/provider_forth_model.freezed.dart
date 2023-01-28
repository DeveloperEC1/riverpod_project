// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider_forth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProviderForthModel {
  String get fruit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProviderForthModelCopyWith<ProviderForthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderForthModelCopyWith<$Res> {
  factory $ProviderForthModelCopyWith(
          ProviderForthModel value, $Res Function(ProviderForthModel) then) =
      _$ProviderForthModelCopyWithImpl<$Res, ProviderForthModel>;
  @useResult
  $Res call({String fruit});
}

/// @nodoc
class _$ProviderForthModelCopyWithImpl<$Res, $Val extends ProviderForthModel>
    implements $ProviderForthModelCopyWith<$Res> {
  _$ProviderForthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fruit = null,
  }) {
    return _then(_value.copyWith(
      fruit: null == fruit
          ? _value.fruit
          : fruit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProviderForthModelCopyWith<$Res>
    implements $ProviderForthModelCopyWith<$Res> {
  factory _$$_ProviderForthModelCopyWith(_$_ProviderForthModel value,
          $Res Function(_$_ProviderForthModel) then) =
      __$$_ProviderForthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fruit});
}

/// @nodoc
class __$$_ProviderForthModelCopyWithImpl<$Res>
    extends _$ProviderForthModelCopyWithImpl<$Res, _$_ProviderForthModel>
    implements _$$_ProviderForthModelCopyWith<$Res> {
  __$$_ProviderForthModelCopyWithImpl(
      _$_ProviderForthModel _value, $Res Function(_$_ProviderForthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fruit = null,
  }) {
    return _then(_$_ProviderForthModel(
      fruit: null == fruit
          ? _value.fruit
          : fruit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProviderForthModel implements _ProviderForthModel {
  const _$_ProviderForthModel({this.fruit = 'Unknown'});

  @override
  @JsonKey()
  final String fruit;

  @override
  String toString() {
    return 'ProviderForthModel(fruit: $fruit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProviderForthModel &&
            (identical(other.fruit, fruit) || other.fruit == fruit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fruit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProviderForthModelCopyWith<_$_ProviderForthModel> get copyWith =>
      __$$_ProviderForthModelCopyWithImpl<_$_ProviderForthModel>(
          this, _$identity);
}

abstract class _ProviderForthModel implements ProviderForthModel {
  const factory _ProviderForthModel({final String fruit}) =
      _$_ProviderForthModel;

  @override
  String get fruit;
  @override
  @JsonKey(ignore: true)
  _$$_ProviderForthModelCopyWith<_$_ProviderForthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

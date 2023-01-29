// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForthModel {
  String get fruit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForthModelCopyWith<ForthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForthModelCopyWith<$Res> {
  factory $ForthModelCopyWith(
          ForthModel value, $Res Function(ForthModel) then) =
      _$ForthModelCopyWithImpl<$Res, ForthModel>;
  @useResult
  $Res call({String fruit});
}

/// @nodoc
class _$ForthModelCopyWithImpl<$Res, $Val extends ForthModel>
    implements $ForthModelCopyWith<$Res> {
  _$ForthModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ForthModelCopyWith<$Res>
    implements $ForthModelCopyWith<$Res> {
  factory _$$_ForthModelCopyWith(
          _$_ForthModel value, $Res Function(_$_ForthModel) then) =
      __$$_ForthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fruit});
}

/// @nodoc
class __$$_ForthModelCopyWithImpl<$Res>
    extends _$ForthModelCopyWithImpl<$Res, _$_ForthModel>
    implements _$$_ForthModelCopyWith<$Res> {
  __$$_ForthModelCopyWithImpl(
      _$_ForthModel _value, $Res Function(_$_ForthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fruit = null,
  }) {
    return _then(_$_ForthModel(
      fruit: null == fruit
          ? _value.fruit
          : fruit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ForthModel implements _ForthModel {
  const _$_ForthModel({this.fruit = 'Unknown'});

  @override
  @JsonKey()
  final String fruit;

  @override
  String toString() {
    return 'ForthModel(fruit: $fruit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForthModel &&
            (identical(other.fruit, fruit) || other.fruit == fruit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fruit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForthModelCopyWith<_$_ForthModel> get copyWith =>
      __$$_ForthModelCopyWithImpl<_$_ForthModel>(this, _$identity);
}

abstract class _ForthModel implements ForthModel {
  const factory _ForthModel({final String fruit}) = _$_ForthModel;

  @override
  String get fruit;
  @override
  @JsonKey(ignore: true)
  _$$_ForthModelCopyWith<_$_ForthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

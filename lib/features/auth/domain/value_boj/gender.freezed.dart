// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Gender {
  GenderType get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GenderCopyWith<Gender> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderCopyWith<$Res> {
  factory $GenderCopyWith(Gender value, $Res Function(Gender) then) =
      _$GenderCopyWithImpl<$Res, Gender>;
  @useResult
  $Res call({GenderType value});
}

/// @nodoc
class _$GenderCopyWithImpl<$Res, $Val extends Gender>
    implements $GenderCopyWith<$Res> {
  _$GenderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as GenderType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenderImplCopyWith<$Res> implements $GenderCopyWith<$Res> {
  factory _$$GenderImplCopyWith(
          _$GenderImpl value, $Res Function(_$GenderImpl) then) =
      __$$GenderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GenderType value});
}

/// @nodoc
class __$$GenderImplCopyWithImpl<$Res>
    extends _$GenderCopyWithImpl<$Res, _$GenderImpl>
    implements _$$GenderImplCopyWith<$Res> {
  __$$GenderImplCopyWithImpl(
      _$GenderImpl _value, $Res Function(_$GenderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$GenderImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as GenderType,
    ));
  }
}

/// @nodoc

class _$GenderImpl extends _Gender {
  const _$GenderImpl({required this.value}) : super._();

  @override
  final GenderType value;

  @override
  String toString() {
    return 'Gender(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderImplCopyWith<_$GenderImpl> get copyWith =>
      __$$GenderImplCopyWithImpl<_$GenderImpl>(this, _$identity);
}

abstract class _Gender extends Gender {
  const factory _Gender({required final GenderType value}) = _$GenderImpl;
  const _Gender._() : super._();

  @override
  GenderType get value;
  @override
  @JsonKey(ignore: true)
  _$$GenderImplCopyWith<_$GenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

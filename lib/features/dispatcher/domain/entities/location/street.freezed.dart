// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'street.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Street _$StreetFromJson(Map<String, dynamic> json) {
  return _Street.fromJson(json);
}

/// @nodoc
mixin _$Street {
  String get name => throw _privateConstructorUsedError;
  double get frequency => throw _privateConstructorUsedError;

  /// Serializes this Street to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Street
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreetCopyWith<Street> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreetCopyWith<$Res> {
  factory $StreetCopyWith(Street value, $Res Function(Street) then) =
      _$StreetCopyWithImpl<$Res, Street>;
  @useResult
  $Res call({String name, double frequency});
}

/// @nodoc
class _$StreetCopyWithImpl<$Res, $Val extends Street>
    implements $StreetCopyWith<$Res> {
  _$StreetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Street
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? frequency = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            frequency:
                null == frequency
                    ? _value.frequency
                    : frequency // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StreetImplCopyWith<$Res> implements $StreetCopyWith<$Res> {
  factory _$$StreetImplCopyWith(
    _$StreetImpl value,
    $Res Function(_$StreetImpl) then,
  ) = __$$StreetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double frequency});
}

/// @nodoc
class __$$StreetImplCopyWithImpl<$Res>
    extends _$StreetCopyWithImpl<$Res, _$StreetImpl>
    implements _$$StreetImplCopyWith<$Res> {
  __$$StreetImplCopyWithImpl(
    _$StreetImpl _value,
    $Res Function(_$StreetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Street
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? frequency = null}) {
    return _then(
      _$StreetImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        frequency:
            null == frequency
                ? _value.frequency
                : frequency // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StreetImpl implements _Street {
  const _$StreetImpl({required this.name, required this.frequency});

  factory _$StreetImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreetImplFromJson(json);

  @override
  final String name;
  @override
  final double frequency;

  @override
  String toString() {
    return 'Street(name: $name, frequency: $frequency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreetImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, frequency);

  /// Create a copy of Street
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreetImplCopyWith<_$StreetImpl> get copyWith =>
      __$$StreetImplCopyWithImpl<_$StreetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreetImplToJson(this);
  }
}

abstract class _Street implements Street {
  const factory _Street({
    required final String name,
    required final double frequency,
  }) = _$StreetImpl;

  factory _Street.fromJson(Map<String, dynamic> json) = _$StreetImpl.fromJson;

  @override
  String get name;
  @override
  double get frequency;

  /// Create a copy of Street
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreetImplCopyWith<_$StreetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

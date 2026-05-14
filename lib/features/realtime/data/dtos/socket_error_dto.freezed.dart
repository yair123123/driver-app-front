// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SocketErrorDto _$SocketErrorDtoFromJson(Map<String, dynamic> json) {
  return _SocketErrorDto.fromJson(json);
}

/// @nodoc
mixin _$SocketErrorDto {
  String? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Map<String, dynamic>? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketErrorDtoCopyWith<SocketErrorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketErrorDtoCopyWith<$Res> {
  factory $SocketErrorDtoCopyWith(
    SocketErrorDto value,
    $Res Function(SocketErrorDto) then,
  ) = _$SocketErrorDtoCopyWithImpl<$Res, SocketErrorDto>;
  @useResult
  $Res call({String? code, String? message, Map<String, dynamic>? details});
}

/// @nodoc
class _$SocketErrorDtoCopyWithImpl<$Res, $Val extends SocketErrorDto>
    implements $SocketErrorDtoCopyWith<$Res> {
  _$SocketErrorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? details = freezed,
  }) {
    return _then(
      _value.copyWith(
            code:
                freezed == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String?,
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
            details:
                freezed == details
                    ? _value.details
                    : details // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SocketErrorDtoImplCopyWith<$Res>
    implements $SocketErrorDtoCopyWith<$Res> {
  factory _$$SocketErrorDtoImplCopyWith(
    _$SocketErrorDtoImpl value,
    $Res Function(_$SocketErrorDtoImpl) then,
  ) = __$$SocketErrorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? message, Map<String, dynamic>? details});
}

/// @nodoc
class __$$SocketErrorDtoImplCopyWithImpl<$Res>
    extends _$SocketErrorDtoCopyWithImpl<$Res, _$SocketErrorDtoImpl>
    implements _$$SocketErrorDtoImplCopyWith<$Res> {
  __$$SocketErrorDtoImplCopyWithImpl(
    _$SocketErrorDtoImpl _value,
    $Res Function(_$SocketErrorDtoImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? details = freezed,
  }) {
    return _then(
      _$SocketErrorDtoImpl(
        code:
            freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String?,
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
        details:
            freezed == details
                ? _value._details
                : details // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketErrorDtoImpl implements _SocketErrorDto {
  const _$SocketErrorDtoImpl({
    this.code,
    this.message,
    final Map<String, dynamic>? details,
  }) : _details = details;

  factory _$SocketErrorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketErrorDtoImplFromJson(json);

  @override
  final String? code;
  @override
  final String? message;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SocketErrorDto(code: $code, message: $message, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketErrorDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    code,
    message,
    const DeepCollectionEquality().hash(_details),
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketErrorDtoImplCopyWith<_$SocketErrorDtoImpl> get copyWith =>
      __$$SocketErrorDtoImplCopyWithImpl<_$SocketErrorDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketErrorDtoImplToJson(this);
  }
}

abstract class _SocketErrorDto implements SocketErrorDto {
  const factory _SocketErrorDto({
    final String? code,
    final String? message,
    final Map<String, dynamic>? details,
  }) = _$SocketErrorDtoImpl;

  factory _SocketErrorDto.fromJson(Map<String, dynamic> json) =
      _$SocketErrorDtoImpl.fromJson;

  @override
  String? get code;
  @override
  String? get message;
  @override
  Map<String, dynamic>? get details;
  @override
  @JsonKey(ignore: true)
  _$$SocketErrorDtoImplCopyWith<_$SocketErrorDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

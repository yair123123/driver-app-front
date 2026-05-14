// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_envelope_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SocketEnvelopeDto _$SocketEnvelopeDtoFromJson(Map<String, dynamic> json) {
  return _SocketEnvelopeDto.fromJson(json);
}

/// @nodoc
mixin _$SocketEnvelopeDto {
  int get typeCode => throw _privateConstructorUsedError;
  int get operationCode => throw _privateConstructorUsedError;
  Map<String, dynamic>? get content => throw _privateConstructorUsedError;
  SocketErrorDto? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketEnvelopeDtoCopyWith<SocketEnvelopeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketEnvelopeDtoCopyWith<$Res> {
  factory $SocketEnvelopeDtoCopyWith(
    SocketEnvelopeDto value,
    $Res Function(SocketEnvelopeDto) then,
  ) = _$SocketEnvelopeDtoCopyWithImpl<$Res, SocketEnvelopeDto>;
  @useResult
  $Res call({
    int typeCode,
    int operationCode,
    Map<String, dynamic>? content,
    SocketErrorDto? error,
  });

  $SocketErrorDtoCopyWith<$Res>? get error;
}

/// @nodoc
class _$SocketEnvelopeDtoCopyWithImpl<$Res, $Val extends SocketEnvelopeDto>
    implements $SocketEnvelopeDtoCopyWith<$Res> {
  _$SocketEnvelopeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeCode = null,
    Object? operationCode = null,
    Object? content = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            typeCode:
                null == typeCode
                    ? _value.typeCode
                    : typeCode // ignore: cast_nullable_to_non_nullable
                        as int,
            operationCode:
                null == operationCode
                    ? _value.operationCode
                    : operationCode // ignore: cast_nullable_to_non_nullable
                        as int,
            content:
                freezed == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as SocketErrorDto?,
          )
          as $Val,
    );
  }

  @override
  @pragma('vm:prefer-inline')
  $SocketErrorDtoCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $SocketErrorDtoCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SocketEnvelopeDtoImplCopyWith<$Res>
    implements $SocketEnvelopeDtoCopyWith<$Res> {
  factory _$$SocketEnvelopeDtoImplCopyWith(
    _$SocketEnvelopeDtoImpl value,
    $Res Function(_$SocketEnvelopeDtoImpl) then,
  ) = __$$SocketEnvelopeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int typeCode,
    int operationCode,
    Map<String, dynamic>? content,
    SocketErrorDto? error,
  });

  @override
  $SocketErrorDtoCopyWith<$Res>? get error;
}

/// @nodoc
class __$$SocketEnvelopeDtoImplCopyWithImpl<$Res>
    extends _$SocketEnvelopeDtoCopyWithImpl<$Res, _$SocketEnvelopeDtoImpl>
    implements _$$SocketEnvelopeDtoImplCopyWith<$Res> {
  __$$SocketEnvelopeDtoImplCopyWithImpl(
    _$SocketEnvelopeDtoImpl _value,
    $Res Function(_$SocketEnvelopeDtoImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeCode = null,
    Object? operationCode = null,
    Object? content = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$SocketEnvelopeDtoImpl(
        typeCode:
            null == typeCode
                ? _value.typeCode
                : typeCode // ignore: cast_nullable_to_non_nullable
                    as int,
        operationCode:
            null == operationCode
                ? _value.operationCode
                : operationCode // ignore: cast_nullable_to_non_nullable
                    as int,
        content:
            freezed == content
                ? _value._content
                : content // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as SocketErrorDto?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketEnvelopeDtoImpl implements _SocketEnvelopeDto {
  const _$SocketEnvelopeDtoImpl({
    required this.typeCode,
    required this.operationCode,
    final Map<String, dynamic>? content,
    this.error,
  }) : _content = content;

  factory _$SocketEnvelopeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketEnvelopeDtoImplFromJson(json);

  @override
  final int typeCode;
  @override
  final int operationCode;
  final Map<String, dynamic>? _content;
  @override
  Map<String, dynamic>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableMapView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final SocketErrorDto? error;

  @override
  String toString() {
    return 'SocketEnvelopeDto(typeCode: $typeCode, operationCode: $operationCode, content: $content, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketEnvelopeDtoImpl &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.operationCode, operationCode) ||
                other.operationCode == operationCode) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    typeCode,
    operationCode,
    const DeepCollectionEquality().hash(_content),
    error,
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketEnvelopeDtoImplCopyWith<_$SocketEnvelopeDtoImpl> get copyWith =>
      __$$SocketEnvelopeDtoImplCopyWithImpl<_$SocketEnvelopeDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketEnvelopeDtoImplToJson(this);
  }
}

abstract class _SocketEnvelopeDto implements SocketEnvelopeDto {
  const factory _SocketEnvelopeDto({
    required final int typeCode,
    required final int operationCode,
    final Map<String, dynamic>? content,
    final SocketErrorDto? error,
  }) = _$SocketEnvelopeDtoImpl;

  factory _SocketEnvelopeDto.fromJson(Map<String, dynamic> json) =
      _$SocketEnvelopeDtoImpl.fromJson;

  @override
  int get typeCode;
  @override
  int get operationCode;
  @override
  Map<String, dynamic>? get content;
  @override
  SocketErrorDto? get error;
  @override
  @JsonKey(ignore: true)
  _$$SocketEnvelopeDtoImplCopyWith<_$SocketEnvelopeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

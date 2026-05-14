// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_outgoing_message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SocketOutgoingMessageDto _$SocketOutgoingMessageDtoFromJson(
  Map<String, dynamic> json,
) {
  return _SocketOutgoingMessageDto.fromJson(json);
}

/// @nodoc
mixin _$SocketOutgoingMessageDto {
  int get typeCode => throw _privateConstructorUsedError;
  int get operationCode => throw _privateConstructorUsedError;
  Map<String, dynamic>? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketOutgoingMessageDtoCopyWith<SocketOutgoingMessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketOutgoingMessageDtoCopyWith<$Res> {
  factory $SocketOutgoingMessageDtoCopyWith(
    SocketOutgoingMessageDto value,
    $Res Function(SocketOutgoingMessageDto) then,
  ) = _$SocketOutgoingMessageDtoCopyWithImpl<$Res, SocketOutgoingMessageDto>;
  @useResult
  $Res call({int typeCode, int operationCode, Map<String, dynamic>? content});
}

/// @nodoc
class _$SocketOutgoingMessageDtoCopyWithImpl<
  $Res,
  $Val extends SocketOutgoingMessageDto
>
    implements $SocketOutgoingMessageDtoCopyWith<$Res> {
  _$SocketOutgoingMessageDtoCopyWithImpl(this._value, this._then);

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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SocketOutgoingMessageDtoImplCopyWith<$Res>
    implements $SocketOutgoingMessageDtoCopyWith<$Res> {
  factory _$$SocketOutgoingMessageDtoImplCopyWith(
    _$SocketOutgoingMessageDtoImpl value,
    $Res Function(_$SocketOutgoingMessageDtoImpl) then,
  ) = __$$SocketOutgoingMessageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int typeCode, int operationCode, Map<String, dynamic>? content});
}

/// @nodoc
class __$$SocketOutgoingMessageDtoImplCopyWithImpl<$Res>
    extends
        _$SocketOutgoingMessageDtoCopyWithImpl<
          $Res,
          _$SocketOutgoingMessageDtoImpl
        >
    implements _$$SocketOutgoingMessageDtoImplCopyWith<$Res> {
  __$$SocketOutgoingMessageDtoImplCopyWithImpl(
    _$SocketOutgoingMessageDtoImpl _value,
    $Res Function(_$SocketOutgoingMessageDtoImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeCode = null,
    Object? operationCode = null,
    Object? content = freezed,
  }) {
    return _then(
      _$SocketOutgoingMessageDtoImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketOutgoingMessageDtoImpl implements _SocketOutgoingMessageDto {
  const _$SocketOutgoingMessageDtoImpl({
    required this.typeCode,
    required this.operationCode,
    final Map<String, dynamic>? content,
  }) : _content = content;

  factory _$SocketOutgoingMessageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketOutgoingMessageDtoImplFromJson(json);

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
  String toString() {
    return 'SocketOutgoingMessageDto(typeCode: $typeCode, operationCode: $operationCode, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketOutgoingMessageDtoImpl &&
            (identical(other.typeCode, typeCode) ||
                other.typeCode == typeCode) &&
            (identical(other.operationCode, operationCode) ||
                other.operationCode == operationCode) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    typeCode,
    operationCode,
    const DeepCollectionEquality().hash(_content),
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketOutgoingMessageDtoImplCopyWith<_$SocketOutgoingMessageDtoImpl>
  get copyWith => __$$SocketOutgoingMessageDtoImplCopyWithImpl<
    _$SocketOutgoingMessageDtoImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketOutgoingMessageDtoImplToJson(this);
  }
}

abstract class _SocketOutgoingMessageDto implements SocketOutgoingMessageDto {
  const factory _SocketOutgoingMessageDto({
    required final int typeCode,
    required final int operationCode,
    final Map<String, dynamic>? content,
  }) = _$SocketOutgoingMessageDtoImpl;

  factory _SocketOutgoingMessageDto.fromJson(Map<String, dynamic> json) =
      _$SocketOutgoingMessageDtoImpl.fromJson;

  @override
  int get typeCode;
  @override
  int get operationCode;
  @override
  Map<String, dynamic>? get content;
  @override
  @JsonKey(ignore: true)
  _$$SocketOutgoingMessageDtoImplCopyWith<_$SocketOutgoingMessageDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

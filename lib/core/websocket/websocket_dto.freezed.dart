// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'websocket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WebSocketDto _$WebSocketDtoFromJson(Map<String, dynamic> json) {
  return _WebSocketDto.fromJson(json);
}

/// @nodoc
mixin _$WebSocketDto {
  dynamic get content => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @JsonKey(fromJson: webSocketTypeCodeFromInt, toJson: webSocketTypeCodeToInt)
  WebSocketTypeCode get type_code => throw _privateConstructorUsedError;

  /// Serializes this WebSocketDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebSocketDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebSocketDtoCopyWith<WebSocketDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketDtoCopyWith<$Res> {
  factory $WebSocketDtoCopyWith(
    WebSocketDto value,
    $Res Function(WebSocketDto) then,
  ) = _$WebSocketDtoCopyWithImpl<$Res, WebSocketDto>;
  @useResult
  $Res call({
    dynamic content,
    String error,
    @JsonKey(fromJson: webSocketTypeCodeFromInt, toJson: webSocketTypeCodeToInt)
    WebSocketTypeCode type_code,
  });
}

/// @nodoc
class _$WebSocketDtoCopyWithImpl<$Res, $Val extends WebSocketDto>
    implements $WebSocketDtoCopyWith<$Res> {
  _$WebSocketDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebSocketDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? error = null,
    Object? type_code = null,
  }) {
    return _then(
      _value.copyWith(
            content:
                freezed == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            error:
                null == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String,
            type_code:
                null == type_code
                    ? _value.type_code
                    : type_code // ignore: cast_nullable_to_non_nullable
                        as WebSocketTypeCode,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WebSocketDtoImplCopyWith<$Res>
    implements $WebSocketDtoCopyWith<$Res> {
  factory _$$WebSocketDtoImplCopyWith(
    _$WebSocketDtoImpl value,
    $Res Function(_$WebSocketDtoImpl) then,
  ) = __$$WebSocketDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    dynamic content,
    String error,
    @JsonKey(fromJson: webSocketTypeCodeFromInt, toJson: webSocketTypeCodeToInt)
    WebSocketTypeCode type_code,
  });
}

/// @nodoc
class __$$WebSocketDtoImplCopyWithImpl<$Res>
    extends _$WebSocketDtoCopyWithImpl<$Res, _$WebSocketDtoImpl>
    implements _$$WebSocketDtoImplCopyWith<$Res> {
  __$$WebSocketDtoImplCopyWithImpl(
    _$WebSocketDtoImpl _value,
    $Res Function(_$WebSocketDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WebSocketDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? error = null,
    Object? type_code = null,
  }) {
    return _then(
      _$WebSocketDtoImpl(
        content:
            freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        error:
            null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String,
        type_code:
            null == type_code
                ? _value.type_code
                : type_code // ignore: cast_nullable_to_non_nullable
                    as WebSocketTypeCode,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WebSocketDtoImpl implements _WebSocketDto {
  const _$WebSocketDtoImpl({
    required this.content,
    required this.error,
    @JsonKey(fromJson: webSocketTypeCodeFromInt, toJson: webSocketTypeCodeToInt)
    required this.type_code,
  });

  factory _$WebSocketDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebSocketDtoImplFromJson(json);

  @override
  final dynamic content;
  @override
  final String error;
  @override
  @JsonKey(fromJson: webSocketTypeCodeFromInt, toJson: webSocketTypeCodeToInt)
  final WebSocketTypeCode type_code;

  @override
  String toString() {
    return 'WebSocketDto(content: $content, error: $error, type_code: $type_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebSocketDtoImpl &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.type_code, type_code) ||
                other.type_code == type_code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(content),
    error,
    type_code,
  );

  /// Create a copy of WebSocketDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebSocketDtoImplCopyWith<_$WebSocketDtoImpl> get copyWith =>
      __$$WebSocketDtoImplCopyWithImpl<_$WebSocketDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebSocketDtoImplToJson(this);
  }
}

abstract class _WebSocketDto implements WebSocketDto {
  const factory _WebSocketDto({
    required final dynamic content,
    required final String error,
    @JsonKey(fromJson: webSocketTypeCodeFromInt, toJson: webSocketTypeCodeToInt)
    required final WebSocketTypeCode type_code,
  }) = _$WebSocketDtoImpl;

  factory _WebSocketDto.fromJson(Map<String, dynamic> json) =
      _$WebSocketDtoImpl.fromJson;

  @override
  dynamic get content;
  @override
  String get error;
  @override
  @JsonKey(fromJson: webSocketTypeCodeFromInt, toJson: webSocketTypeCodeToInt)
  WebSocketTypeCode get type_code;

  /// Create a copy of WebSocketDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebSocketDtoImplCopyWith<_$WebSocketDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

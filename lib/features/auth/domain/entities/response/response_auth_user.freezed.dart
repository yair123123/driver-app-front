// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_auth_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ResponseAuthUser _$ResponseAuthUserFromJson(Map<String, dynamic> json) {
  return _ResponseAuthUser.fromJson(json);
}

/// @nodoc
mixin _$ResponseAuthUser {
  AuthUser? get content => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Serializes this ResponseAuthUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseAuthUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseAuthUserCopyWith<ResponseAuthUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseAuthUserCopyWith<$Res> {
  factory $ResponseAuthUserCopyWith(
    ResponseAuthUser value,
    $Res Function(ResponseAuthUser) then,
  ) = _$ResponseAuthUserCopyWithImpl<$Res, ResponseAuthUser>;
  @useResult
  $Res call({AuthUser? content, bool success, String error});

  $AuthUserCopyWith<$Res>? get content;
}

/// @nodoc
class _$ResponseAuthUserCopyWithImpl<$Res, $Val extends ResponseAuthUser>
    implements $ResponseAuthUserCopyWith<$Res> {
  _$ResponseAuthUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseAuthUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(
      _value.copyWith(
            content:
                freezed == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as AuthUser?,
            success:
                null == success
                    ? _value.success
                    : success // ignore: cast_nullable_to_non_nullable
                        as bool,
            error:
                null == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of ResponseAuthUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthUserCopyWith<$Res>? get content {
    if (_value.content == null) {
      return null;
    }

    return $AuthUserCopyWith<$Res>(_value.content!, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseAuthUserImplCopyWith<$Res>
    implements $ResponseAuthUserCopyWith<$Res> {
  factory _$$ResponseAuthUserImplCopyWith(
    _$ResponseAuthUserImpl value,
    $Res Function(_$ResponseAuthUserImpl) then,
  ) = __$$ResponseAuthUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthUser? content, bool success, String error});

  @override
  $AuthUserCopyWith<$Res>? get content;
}

/// @nodoc
class __$$ResponseAuthUserImplCopyWithImpl<$Res>
    extends _$ResponseAuthUserCopyWithImpl<$Res, _$ResponseAuthUserImpl>
    implements _$$ResponseAuthUserImplCopyWith<$Res> {
  __$$ResponseAuthUserImplCopyWithImpl(
    _$ResponseAuthUserImpl _value,
    $Res Function(_$ResponseAuthUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResponseAuthUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(
      _$ResponseAuthUserImpl(
        content:
            freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as AuthUser?,
        success:
            null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                    as bool,
        error:
            null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseAuthUserImpl implements _ResponseAuthUser {
  const _$ResponseAuthUserImpl({
    this.content,
    required this.success,
    required this.error,
  });

  factory _$ResponseAuthUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseAuthUserImplFromJson(json);

  @override
  final AuthUser? content;
  @override
  final bool success;
  @override
  final String error;

  @override
  String toString() {
    return 'ResponseAuthUser(content: $content, success: $success, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseAuthUserImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, success, error);

  /// Create a copy of ResponseAuthUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseAuthUserImplCopyWith<_$ResponseAuthUserImpl> get copyWith =>
      __$$ResponseAuthUserImplCopyWithImpl<_$ResponseAuthUserImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseAuthUserImplToJson(this);
  }
}

abstract class _ResponseAuthUser implements ResponseAuthUser {
  const factory _ResponseAuthUser({
    final AuthUser? content,
    required final bool success,
    required final String error,
  }) = _$ResponseAuthUserImpl;

  factory _ResponseAuthUser.fromJson(Map<String, dynamic> json) =
      _$ResponseAuthUserImpl.fromJson;

  @override
  AuthUser? get content;
  @override
  bool get success;
  @override
  String get error;

  /// Create a copy of ResponseAuthUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseAuthUserImplCopyWith<_$ResponseAuthUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

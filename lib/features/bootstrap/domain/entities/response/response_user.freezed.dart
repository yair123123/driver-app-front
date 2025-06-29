// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ResponseUser _$ResponseUserFromJson(Map<String, dynamic> json) {
  return _ResponseUser.fromJson(json);
}

/// @nodoc
mixin _$ResponseUser {
  User? get content => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  /// Serializes this ResponseUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseUserCopyWith<ResponseUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseUserCopyWith<$Res> {
  factory $ResponseUserCopyWith(
    ResponseUser value,
    $Res Function(ResponseUser) then,
  ) = _$ResponseUserCopyWithImpl<$Res, ResponseUser>;
  @useResult
  $Res call({User? content, bool success, String error});

  $UserCopyWith<$Res>? get content;
}

/// @nodoc
class _$ResponseUserCopyWithImpl<$Res, $Val extends ResponseUser>
    implements $ResponseUserCopyWith<$Res> {
  _$ResponseUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseUser
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
                        as User?,
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

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get content {
    if (_value.content == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.content!, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseUserImplCopyWith<$Res>
    implements $ResponseUserCopyWith<$Res> {
  factory _$$ResponseUserImplCopyWith(
    _$ResponseUserImpl value,
    $Res Function(_$ResponseUserImpl) then,
  ) = __$$ResponseUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? content, bool success, String error});

  @override
  $UserCopyWith<$Res>? get content;
}

/// @nodoc
class __$$ResponseUserImplCopyWithImpl<$Res>
    extends _$ResponseUserCopyWithImpl<$Res, _$ResponseUserImpl>
    implements _$$ResponseUserImplCopyWith<$Res> {
  __$$ResponseUserImplCopyWithImpl(
    _$ResponseUserImpl _value,
    $Res Function(_$ResponseUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? success = null,
    Object? error = null,
  }) {
    return _then(
      _$ResponseUserImpl(
        content:
            freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as User?,
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
class _$ResponseUserImpl implements _ResponseUser {
  const _$ResponseUserImpl({
    this.content,
    required this.success,
    required this.error,
  });

  factory _$ResponseUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseUserImplFromJson(json);

  @override
  final User? content;
  @override
  final bool success;
  @override
  final String error;

  @override
  String toString() {
    return 'ResponseUser(content: $content, success: $success, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseUserImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, success, error);

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseUserImplCopyWith<_$ResponseUserImpl> get copyWith =>
      __$$ResponseUserImplCopyWithImpl<_$ResponseUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseUserImplToJson(this);
  }
}

abstract class _ResponseUser implements ResponseUser {
  const factory _ResponseUser({
    final User? content,
    required final bool success,
    required final String error,
  }) = _$ResponseUserImpl;

  factory _ResponseUser.fromJson(Map<String, dynamic> json) =
      _$ResponseUserImpl.fromJson;

  @override
  User? get content;
  @override
  bool get success;
  @override
  String get error;

  /// Create a copy of ResponseUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseUserImplCopyWith<_$ResponseUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

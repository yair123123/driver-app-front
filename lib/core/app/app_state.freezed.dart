// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppState {
  User? get user => throw _privateConstructorUsedError;
  Settings? get settings => throw _privateConstructorUsedError;
  bool get socketConnected => throw _privateConstructorUsedError;
  Ride? get activeRide => throw _privateConstructorUsedError;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({
    User? user,
    Settings? settings,
    bool socketConnected,
    Ride? activeRide,
  });

  $UserCopyWith<$Res>? get user;
  $RideCopyWith<$Res>? get activeRide;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? settings = freezed,
    Object? socketConnected = null,
    Object? activeRide = freezed,
  }) {
    return _then(
      _value.copyWith(
            user:
                freezed == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as User?,
            settings:
                freezed == settings
                    ? _value.settings
                    : settings // ignore: cast_nullable_to_non_nullable
                        as Settings?,
            socketConnected:
                null == socketConnected
                    ? _value.socketConnected
                    : socketConnected // ignore: cast_nullable_to_non_nullable
                        as bool,
            activeRide:
                freezed == activeRide
                    ? _value.activeRide
                    : activeRide // ignore: cast_nullable_to_non_nullable
                        as Ride?,
          )
          as $Val,
    );
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RideCopyWith<$Res>? get activeRide {
    if (_value.activeRide == null) {
      return null;
    }

    return $RideCopyWith<$Res>(_value.activeRide!, (value) {
      return _then(_value.copyWith(activeRide: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
    _$AppStateImpl value,
    $Res Function(_$AppStateImpl) then,
  ) = __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    User? user,
    Settings? settings,
    bool socketConnected,
    Ride? activeRide,
  });

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $RideCopyWith<$Res>? get activeRide;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
    _$AppStateImpl _value,
    $Res Function(_$AppStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? settings = freezed,
    Object? socketConnected = null,
    Object? activeRide = freezed,
  }) {
    return _then(
      _$AppStateImpl(
        user:
            freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as User?,
        settings:
            freezed == settings
                ? _value.settings
                : settings // ignore: cast_nullable_to_non_nullable
                    as Settings?,
        socketConnected:
            null == socketConnected
                ? _value.socketConnected
                : socketConnected // ignore: cast_nullable_to_non_nullable
                    as bool,
        activeRide:
            freezed == activeRide
                ? _value.activeRide
                : activeRide // ignore: cast_nullable_to_non_nullable
                    as Ride?,
      ),
    );
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl({
    this.user,
    this.settings,
    this.socketConnected = false,
    this.activeRide,
  });

  @override
  final User? user;
  @override
  final Settings? settings;
  @override
  @JsonKey()
  final bool socketConnected;
  @override
  final Ride? activeRide;

  @override
  String toString() {
    return 'AppState(user: $user, settings: $settings, socketConnected: $socketConnected, activeRide: $activeRide)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.socketConnected, socketConnected) ||
                other.socketConnected == socketConnected) &&
            (identical(other.activeRide, activeRide) ||
                other.activeRide == activeRide));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, settings, socketConnected, activeRide);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState({
    final User? user,
    final Settings? settings,
    final bool socketConnected,
    final Ride? activeRide,
  }) = _$AppStateImpl;

  @override
  User? get user;
  @override
  Settings? get settings;
  @override
  bool get socketConnected;
  @override
  Ride? get activeRide;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

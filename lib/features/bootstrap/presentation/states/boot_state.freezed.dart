// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boot_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BootState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unauthenticated,
    required TResult Function(BootStep step) warmingUp,
    required TResult Function() ready,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unauthenticated,
    TResult? Function(BootStep step)? warmingUp,
    TResult? Function()? ready,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unauthenticated,
    TResult Function(BootStep step)? warmingUp,
    TResult Function()? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Unauth value) unauthenticated,
    required TResult Function(WarmingUp value) warmingUp,
    required TResult Function(Ready value) ready,
    required TResult Function(Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Unauth value)? unauthenticated,
    TResult? Function(WarmingUp value)? warmingUp,
    TResult? Function(Ready value)? ready,
    TResult? Function(Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauth value)? unauthenticated,
    TResult Function(WarmingUp value)? warmingUp,
    TResult Function(Ready value)? ready,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BootStateCopyWith<$Res> {
  factory $BootStateCopyWith(BootState value, $Res Function(BootState) then) =
      _$BootStateCopyWithImpl<$Res, BootState>;
}

/// @nodoc
class _$BootStateCopyWithImpl<$Res, $Val extends BootState>
    implements $BootStateCopyWith<$Res> {
  _$BootStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BootState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BootStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BootState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BootState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unauthenticated,
    required TResult Function(BootStep step) warmingUp,
    required TResult Function() ready,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unauthenticated,
    TResult? Function(BootStep step)? warmingUp,
    TResult? Function()? ready,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unauthenticated,
    TResult Function(BootStep step)? warmingUp,
    TResult Function()? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Unauth value) unauthenticated,
    required TResult Function(WarmingUp value) warmingUp,
    required TResult Function(Ready value) ready,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Unauth value)? unauthenticated,
    TResult? Function(WarmingUp value)? warmingUp,
    TResult? Function(Ready value)? ready,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauth value)? unauthenticated,
    TResult Function(WarmingUp value)? warmingUp,
    TResult Function(Ready value)? ready,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BootState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$UnauthImplCopyWith<$Res> {
  factory _$$UnauthImplCopyWith(
    _$UnauthImpl value,
    $Res Function(_$UnauthImpl) then,
  ) = __$$UnauthImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthImplCopyWithImpl<$Res>
    extends _$BootStateCopyWithImpl<$Res, _$UnauthImpl>
    implements _$$UnauthImplCopyWith<$Res> {
  __$$UnauthImplCopyWithImpl(
    _$UnauthImpl _value,
    $Res Function(_$UnauthImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BootState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthImpl implements Unauth {
  const _$UnauthImpl();

  @override
  String toString() {
    return 'BootState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unauthenticated,
    required TResult Function(BootStep step) warmingUp,
    required TResult Function() ready,
    required TResult Function(String message) error,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unauthenticated,
    TResult? Function(BootStep step)? warmingUp,
    TResult? Function()? ready,
    TResult? Function(String message)? error,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unauthenticated,
    TResult Function(BootStep step)? warmingUp,
    TResult Function()? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Unauth value) unauthenticated,
    required TResult Function(WarmingUp value) warmingUp,
    required TResult Function(Ready value) ready,
    required TResult Function(Error value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Unauth value)? unauthenticated,
    TResult? Function(WarmingUp value)? warmingUp,
    TResult? Function(Ready value)? ready,
    TResult? Function(Error value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauth value)? unauthenticated,
    TResult Function(WarmingUp value)? warmingUp,
    TResult Function(Ready value)? ready,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauth implements BootState {
  const factory Unauth() = _$UnauthImpl;
}

/// @nodoc
abstract class _$$WarmingUpImplCopyWith<$Res> {
  factory _$$WarmingUpImplCopyWith(
    _$WarmingUpImpl value,
    $Res Function(_$WarmingUpImpl) then,
  ) = __$$WarmingUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BootStep step});
}

/// @nodoc
class __$$WarmingUpImplCopyWithImpl<$Res>
    extends _$BootStateCopyWithImpl<$Res, _$WarmingUpImpl>
    implements _$$WarmingUpImplCopyWith<$Res> {
  __$$WarmingUpImplCopyWithImpl(
    _$WarmingUpImpl _value,
    $Res Function(_$WarmingUpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BootState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? step = null}) {
    return _then(
      _$WarmingUpImpl(
        null == step
            ? _value.step
            : step // ignore: cast_nullable_to_non_nullable
                as BootStep,
      ),
    );
  }
}

/// @nodoc

class _$WarmingUpImpl implements WarmingUp {
  const _$WarmingUpImpl(this.step);

  @override
  final BootStep step;

  @override
  String toString() {
    return 'BootState.warmingUp(step: $step)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarmingUpImpl &&
            (identical(other.step, step) || other.step == step));
  }

  @override
  int get hashCode => Object.hash(runtimeType, step);

  /// Create a copy of BootState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarmingUpImplCopyWith<_$WarmingUpImpl> get copyWith =>
      __$$WarmingUpImplCopyWithImpl<_$WarmingUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unauthenticated,
    required TResult Function(BootStep step) warmingUp,
    required TResult Function() ready,
    required TResult Function(String message) error,
  }) {
    return warmingUp(step);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unauthenticated,
    TResult? Function(BootStep step)? warmingUp,
    TResult? Function()? ready,
    TResult? Function(String message)? error,
  }) {
    return warmingUp?.call(step);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unauthenticated,
    TResult Function(BootStep step)? warmingUp,
    TResult Function()? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (warmingUp != null) {
      return warmingUp(step);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Unauth value) unauthenticated,
    required TResult Function(WarmingUp value) warmingUp,
    required TResult Function(Ready value) ready,
    required TResult Function(Error value) error,
  }) {
    return warmingUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Unauth value)? unauthenticated,
    TResult? Function(WarmingUp value)? warmingUp,
    TResult? Function(Ready value)? ready,
    TResult? Function(Error value)? error,
  }) {
    return warmingUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauth value)? unauthenticated,
    TResult Function(WarmingUp value)? warmingUp,
    TResult Function(Ready value)? ready,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (warmingUp != null) {
      return warmingUp(this);
    }
    return orElse();
  }
}

abstract class WarmingUp implements BootState {
  const factory WarmingUp(final BootStep step) = _$WarmingUpImpl;

  BootStep get step;

  /// Create a copy of BootState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarmingUpImplCopyWith<_$WarmingUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
    _$ReadyImpl value,
    $Res Function(_$ReadyImpl) then,
  ) = __$$ReadyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$BootStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
    _$ReadyImpl _value,
    $Res Function(_$ReadyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BootState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReadyImpl implements Ready {
  const _$ReadyImpl();

  @override
  String toString() {
    return 'BootState.ready()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unauthenticated,
    required TResult Function(BootStep step) warmingUp,
    required TResult Function() ready,
    required TResult Function(String message) error,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unauthenticated,
    TResult? Function(BootStep step)? warmingUp,
    TResult? Function()? ready,
    TResult? Function(String message)? error,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unauthenticated,
    TResult Function(BootStep step)? warmingUp,
    TResult Function()? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Unauth value) unauthenticated,
    required TResult Function(WarmingUp value) warmingUp,
    required TResult Function(Ready value) ready,
    required TResult Function(Error value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Unauth value)? unauthenticated,
    TResult? Function(WarmingUp value)? warmingUp,
    TResult? Function(Ready value)? ready,
    TResult? Function(Error value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauth value)? unauthenticated,
    TResult Function(WarmingUp value)? warmingUp,
    TResult Function(Ready value)? ready,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class Ready implements BootState {
  const factory Ready() = _$ReadyImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$BootStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BootState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BootState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BootState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() unauthenticated,
    required TResult Function(BootStep step) warmingUp,
    required TResult Function() ready,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? unauthenticated,
    TResult? Function(BootStep step)? warmingUp,
    TResult? Function()? ready,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? unauthenticated,
    TResult Function(BootStep step)? warmingUp,
    TResult Function()? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Unauth value) unauthenticated,
    required TResult Function(WarmingUp value) warmingUp,
    required TResult Function(Ready value) ready,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Unauth value)? unauthenticated,
    TResult? Function(WarmingUp value)? warmingUp,
    TResult? Function(Ready value)? ready,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Unauth value)? unauthenticated,
    TResult Function(WarmingUp value)? warmingUp,
    TResult Function(Ready value)? ready,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements BootState {
  const factory Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of BootState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

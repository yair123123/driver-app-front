// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  bool get canReceiveRidesForNonPayment => throw _privateConstructorUsedError;
  bool get isDispatcher => throw _privateConstructorUsedError;
  List<int> get dispatcherStationsId => throw _privateConstructorUsedError;
  List<int> get driverStationsId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String username,
      Gender gender,
      double rating,
      bool canReceiveRidesForNonPayment,
      bool isDispatcher,
      List<int> dispatcherStationsId,
      List<int> driverStationsId});

  $GenderCopyWith<$Res> get gender;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? gender = null,
    Object? rating = null,
    Object? canReceiveRidesForNonPayment = null,
    Object? isDispatcher = null,
    Object? dispatcherStationsId = null,
    Object? driverStationsId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      canReceiveRidesForNonPayment: null == canReceiveRidesForNonPayment
          ? _value.canReceiveRidesForNonPayment
          : canReceiveRidesForNonPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      isDispatcher: null == isDispatcher
          ? _value.isDispatcher
          : isDispatcher // ignore: cast_nullable_to_non_nullable
              as bool,
      dispatcherStationsId: null == dispatcherStationsId
          ? _value.dispatcherStationsId
          : dispatcherStationsId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      driverStationsId: null == driverStationsId
          ? _value.driverStationsId
          : driverStationsId // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GenderCopyWith<$Res> get gender {
    return $GenderCopyWith<$Res>(_value.gender, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      Gender gender,
      double rating,
      bool canReceiveRidesForNonPayment,
      bool isDispatcher,
      List<int> dispatcherStationsId,
      List<int> driverStationsId});

  @override
  $GenderCopyWith<$Res> get gender;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? gender = null,
    Object? rating = null,
    Object? canReceiveRidesForNonPayment = null,
    Object? isDispatcher = null,
    Object? dispatcherStationsId = null,
    Object? driverStationsId = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      canReceiveRidesForNonPayment: null == canReceiveRidesForNonPayment
          ? _value.canReceiveRidesForNonPayment
          : canReceiveRidesForNonPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      isDispatcher: null == isDispatcher
          ? _value.isDispatcher
          : isDispatcher // ignore: cast_nullable_to_non_nullable
              as bool,
      dispatcherStationsId: null == dispatcherStationsId
          ? _value._dispatcherStationsId
          : dispatcherStationsId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      driverStationsId: null == driverStationsId
          ? _value._driverStationsId
          : driverStationsId // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.username,
      required this.gender,
      required this.rating,
      required this.canReceiveRidesForNonPayment,
      required this.isDispatcher,
      final List<int> dispatcherStationsId = const <int>[],
      final List<int> driverStationsId = const <int>[]})
      : _dispatcherStationsId = dispatcherStationsId,
        _driverStationsId = driverStationsId;

  @override
  final int id;
  @override
  final String username;
  @override
  final Gender gender;
  @override
  final double rating;
  @override
  final bool canReceiveRidesForNonPayment;
  @override
  final bool isDispatcher;
  final List<int> _dispatcherStationsId;
  @override
  @JsonKey()
  List<int> get dispatcherStationsId {
    if (_dispatcherStationsId is EqualUnmodifiableListView)
      return _dispatcherStationsId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dispatcherStationsId);
  }

  final List<int> _driverStationsId;
  @override
  @JsonKey()
  List<int> get driverStationsId {
    if (_driverStationsId is EqualUnmodifiableListView)
      return _driverStationsId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_driverStationsId);
  }

  @override
  String toString() {
    return 'User(id: $id, username: $username, gender: $gender, rating: $rating, canReceiveRidesForNonPayment: $canReceiveRidesForNonPayment, isDispatcher: $isDispatcher, dispatcherStationsId: $dispatcherStationsId, driverStationsId: $driverStationsId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.canReceiveRidesForNonPayment,
                    canReceiveRidesForNonPayment) ||
                other.canReceiveRidesForNonPayment ==
                    canReceiveRidesForNonPayment) &&
            (identical(other.isDispatcher, isDispatcher) ||
                other.isDispatcher == isDispatcher) &&
            const DeepCollectionEquality()
                .equals(other._dispatcherStationsId, _dispatcherStationsId) &&
            const DeepCollectionEquality()
                .equals(other._driverStationsId, _driverStationsId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      gender,
      rating,
      canReceiveRidesForNonPayment,
      isDispatcher,
      const DeepCollectionEquality().hash(_dispatcherStationsId),
      const DeepCollectionEquality().hash(_driverStationsId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      required final String username,
      required final Gender gender,
      required final double rating,
      required final bool canReceiveRidesForNonPayment,
      required final bool isDispatcher,
      final List<int> dispatcherStationsId,
      final List<int> driverStationsId}) = _$UserImpl;

  @override
  int get id;
  @override
  String get username;
  @override
  Gender get gender;
  @override
  double get rating;
  @override
  bool get canReceiveRidesForNonPayment;
  @override
  bool get isDispatcher;
  @override
  List<int> get dispatcherStationsId;
  @override
  List<int> get driverStationsId;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

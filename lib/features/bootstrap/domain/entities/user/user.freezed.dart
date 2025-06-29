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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get login_key => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  bool get payment_status => throw _privateConstructorUsedError;
  bool get is_dispatcher => throw _privateConstructorUsedError;
  List<Station> get dispatcher_stations => throw _privateConstructorUsedError;
  List<Station> get driver_stations => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({
    int id,
    String login_key,
    String username,
    String gender,
    double rating,
    bool payment_status,
    bool is_dispatcher,
    List<Station> dispatcher_stations,
    List<Station> driver_stations,
  });
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login_key = null,
    Object? username = null,
    Object? gender = null,
    Object? rating = null,
    Object? payment_status = null,
    Object? is_dispatcher = null,
    Object? dispatcher_stations = null,
    Object? driver_stations = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            login_key:
                null == login_key
                    ? _value.login_key
                    : login_key // ignore: cast_nullable_to_non_nullable
                        as String,
            username:
                null == username
                    ? _value.username
                    : username // ignore: cast_nullable_to_non_nullable
                        as String,
            gender:
                null == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as String,
            rating:
                null == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as double,
            payment_status:
                null == payment_status
                    ? _value.payment_status
                    : payment_status // ignore: cast_nullable_to_non_nullable
                        as bool,
            is_dispatcher:
                null == is_dispatcher
                    ? _value.is_dispatcher
                    : is_dispatcher // ignore: cast_nullable_to_non_nullable
                        as bool,
            dispatcher_stations:
                null == dispatcher_stations
                    ? _value.dispatcher_stations
                    : dispatcher_stations // ignore: cast_nullable_to_non_nullable
                        as List<Station>,
            driver_stations:
                null == driver_stations
                    ? _value.driver_stations
                    : driver_stations // ignore: cast_nullable_to_non_nullable
                        as List<Station>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
    _$UserImpl value,
    $Res Function(_$UserImpl) then,
  ) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String login_key,
    String username,
    String gender,
    double rating,
    bool payment_status,
    bool is_dispatcher,
    List<Station> dispatcher_stations,
    List<Station> driver_stations,
  });
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
    : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login_key = null,
    Object? username = null,
    Object? gender = null,
    Object? rating = null,
    Object? payment_status = null,
    Object? is_dispatcher = null,
    Object? dispatcher_stations = null,
    Object? driver_stations = null,
  }) {
    return _then(
      _$UserImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        login_key:
            null == login_key
                ? _value.login_key
                : login_key // ignore: cast_nullable_to_non_nullable
                    as String,
        username:
            null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                    as String,
        gender:
            null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as String,
        rating:
            null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as double,
        payment_status:
            null == payment_status
                ? _value.payment_status
                : payment_status // ignore: cast_nullable_to_non_nullable
                    as bool,
        is_dispatcher:
            null == is_dispatcher
                ? _value.is_dispatcher
                : is_dispatcher // ignore: cast_nullable_to_non_nullable
                    as bool,
        dispatcher_stations:
            null == dispatcher_stations
                ? _value._dispatcher_stations
                : dispatcher_stations // ignore: cast_nullable_to_non_nullable
                    as List<Station>,
        driver_stations:
            null == driver_stations
                ? _value._driver_stations
                : driver_stations // ignore: cast_nullable_to_non_nullable
                    as List<Station>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({
    required this.id,
    required this.login_key,
    required this.username,
    required this.gender,
    required this.rating,
    required this.payment_status,
    required this.is_dispatcher,
    required final List<Station> dispatcher_stations,
    required final List<Station> driver_stations,
  }) : _dispatcher_stations = dispatcher_stations,
       _driver_stations = driver_stations;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  final String login_key;
  @override
  final String username;
  @override
  final String gender;
  @override
  final double rating;
  @override
  final bool payment_status;
  @override
  final bool is_dispatcher;
  final List<Station> _dispatcher_stations;
  @override
  List<Station> get dispatcher_stations {
    if (_dispatcher_stations is EqualUnmodifiableListView)
      return _dispatcher_stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dispatcher_stations);
  }

  final List<Station> _driver_stations;
  @override
  List<Station> get driver_stations {
    if (_driver_stations is EqualUnmodifiableListView) return _driver_stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_driver_stations);
  }

  @override
  String toString() {
    return 'User(id: $id, login_key: $login_key, username: $username, gender: $gender, rating: $rating, payment_status: $payment_status, is_dispatcher: $is_dispatcher, dispatcher_stations: $dispatcher_stations, driver_stations: $driver_stations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login_key, login_key) ||
                other.login_key == login_key) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.payment_status, payment_status) ||
                other.payment_status == payment_status) &&
            (identical(other.is_dispatcher, is_dispatcher) ||
                other.is_dispatcher == is_dispatcher) &&
            const DeepCollectionEquality().equals(
              other._dispatcher_stations,
              _dispatcher_stations,
            ) &&
            const DeepCollectionEquality().equals(
              other._driver_stations,
              _driver_stations,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    login_key,
    username,
    gender,
    rating,
    payment_status,
    is_dispatcher,
    const DeepCollectionEquality().hash(_dispatcher_stations),
    const DeepCollectionEquality().hash(_driver_stations),
  );

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({
    required final int id,
    required final String login_key,
    required final String username,
    required final String gender,
    required final double rating,
    required final bool payment_status,
    required final bool is_dispatcher,
    required final List<Station> dispatcher_stations,
    required final List<Station> driver_stations,
  }) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  String get login_key;
  @override
  String get username;
  @override
  String get gender;
  @override
  double get rating;
  @override
  bool get payment_status;
  @override
  bool get is_dispatcher;
  @override
  List<Station> get dispatcher_stations;
  @override
  List<Station> get driver_stations;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

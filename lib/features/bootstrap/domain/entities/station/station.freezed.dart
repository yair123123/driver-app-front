// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Station _$StationFromJson(Map<String, dynamic> json) {
  return _Station.fromJson(json);
}

/// @nodoc
mixin _$Station {
  int get station_id => throw _privateConstructorUsedError;
  String get station_name => throw _privateConstructorUsedError;
  String get driver_status_name => throw _privateConstructorUsedError;
  List<Ride> get rides => throw _privateConstructorUsedError;

  /// Serializes this Station to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StationCopyWith<Station> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationCopyWith<$Res> {
  factory $StationCopyWith(Station value, $Res Function(Station) then) =
      _$StationCopyWithImpl<$Res, Station>;
  @useResult
  $Res call({
    int station_id,
    String station_name,
    String driver_status_name,
    List<Ride> rides,
  });
}

/// @nodoc
class _$StationCopyWithImpl<$Res, $Val extends Station>
    implements $StationCopyWith<$Res> {
  _$StationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station_id = null,
    Object? station_name = null,
    Object? driver_status_name = null,
    Object? rides = null,
  }) {
    return _then(
      _value.copyWith(
            station_id:
                null == station_id
                    ? _value.station_id
                    : station_id // ignore: cast_nullable_to_non_nullable
                        as int,
            station_name:
                null == station_name
                    ? _value.station_name
                    : station_name // ignore: cast_nullable_to_non_nullable
                        as String,
            driver_status_name:
                null == driver_status_name
                    ? _value.driver_status_name
                    : driver_status_name // ignore: cast_nullable_to_non_nullable
                        as String,
            rides:
                null == rides
                    ? _value.rides
                    : rides // ignore: cast_nullable_to_non_nullable
                        as List<Ride>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StationImplCopyWith<$Res> implements $StationCopyWith<$Res> {
  factory _$$StationImplCopyWith(
    _$StationImpl value,
    $Res Function(_$StationImpl) then,
  ) = __$$StationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int station_id,
    String station_name,
    String driver_status_name,
    List<Ride> rides,
  });
}

/// @nodoc
class __$$StationImplCopyWithImpl<$Res>
    extends _$StationCopyWithImpl<$Res, _$StationImpl>
    implements _$$StationImplCopyWith<$Res> {
  __$$StationImplCopyWithImpl(
    _$StationImpl _value,
    $Res Function(_$StationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? station_id = null,
    Object? station_name = null,
    Object? driver_status_name = null,
    Object? rides = null,
  }) {
    return _then(
      _$StationImpl(
        station_id:
            null == station_id
                ? _value.station_id
                : station_id // ignore: cast_nullable_to_non_nullable
                    as int,
        station_name:
            null == station_name
                ? _value.station_name
                : station_name // ignore: cast_nullable_to_non_nullable
                    as String,
        driver_status_name:
            null == driver_status_name
                ? _value.driver_status_name
                : driver_status_name // ignore: cast_nullable_to_non_nullable
                    as String,
        rides:
            null == rides
                ? _value._rides
                : rides // ignore: cast_nullable_to_non_nullable
                    as List<Ride>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StationImpl implements _Station {
  const _$StationImpl({
    required this.station_id,
    required this.station_name,
    this.driver_status_name = "",
    final List<Ride> rides = const [],
  }) : _rides = rides;

  factory _$StationImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationImplFromJson(json);

  @override
  final int station_id;
  @override
  final String station_name;
  @override
  @JsonKey()
  final String driver_status_name;
  final List<Ride> _rides;
  @override
  @JsonKey()
  List<Ride> get rides {
    if (_rides is EqualUnmodifiableListView) return _rides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rides);
  }

  @override
  String toString() {
    return 'Station(station_id: $station_id, station_name: $station_name, driver_status_name: $driver_status_name, rides: $rides)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationImpl &&
            (identical(other.station_id, station_id) ||
                other.station_id == station_id) &&
            (identical(other.station_name, station_name) ||
                other.station_name == station_name) &&
            (identical(other.driver_status_name, driver_status_name) ||
                other.driver_status_name == driver_status_name) &&
            const DeepCollectionEquality().equals(other._rides, _rides));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    station_id,
    station_name,
    driver_status_name,
    const DeepCollectionEquality().hash(_rides),
  );

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationImplCopyWith<_$StationImpl> get copyWith =>
      __$$StationImplCopyWithImpl<_$StationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StationImplToJson(this);
  }
}

abstract class _Station implements Station {
  const factory _Station({
    required final int station_id,
    required final String station_name,
    final String driver_status_name,
    final List<Ride> rides,
  }) = _$StationImpl;

  factory _Station.fromJson(Map<String, dynamic> json) = _$StationImpl.fromJson;

  @override
  int get station_id;
  @override
  String get station_name;
  @override
  String get driver_status_name;
  @override
  List<Ride> get rides;

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationImplCopyWith<_$StationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

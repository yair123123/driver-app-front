// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relation_station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RelationStation _$RelationStationFromJson(Map<String, dynamic> json) {
  return _RelationStation.fromJson(json);
}

/// @nodoc
mixin _$RelationStation {
  Station get station => throw _privateConstructorUsedError;
  String get relationType => throw _privateConstructorUsedError;

  /// Serializes this RelationStation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RelationStation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelationStationCopyWith<RelationStation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationStationCopyWith<$Res> {
  factory $RelationStationCopyWith(
    RelationStation value,
    $Res Function(RelationStation) then,
  ) = _$RelationStationCopyWithImpl<$Res, RelationStation>;
  @useResult
  $Res call({Station station, String relationType});

  $StationCopyWith<$Res> get station;
}

/// @nodoc
class _$RelationStationCopyWithImpl<$Res, $Val extends RelationStation>
    implements $RelationStationCopyWith<$Res> {
  _$RelationStationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelationStation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? station = null, Object? relationType = null}) {
    return _then(
      _value.copyWith(
            station:
                null == station
                    ? _value.station
                    : station // ignore: cast_nullable_to_non_nullable
                        as Station,
            relationType:
                null == relationType
                    ? _value.relationType
                    : relationType // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of RelationStation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationCopyWith<$Res> get station {
    return $StationCopyWith<$Res>(_value.station, (value) {
      return _then(_value.copyWith(station: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RelationStationImplCopyWith<$Res>
    implements $RelationStationCopyWith<$Res> {
  factory _$$RelationStationImplCopyWith(
    _$RelationStationImpl value,
    $Res Function(_$RelationStationImpl) then,
  ) = __$$RelationStationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Station station, String relationType});

  @override
  $StationCopyWith<$Res> get station;
}

/// @nodoc
class __$$RelationStationImplCopyWithImpl<$Res>
    extends _$RelationStationCopyWithImpl<$Res, _$RelationStationImpl>
    implements _$$RelationStationImplCopyWith<$Res> {
  __$$RelationStationImplCopyWithImpl(
    _$RelationStationImpl _value,
    $Res Function(_$RelationStationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RelationStation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? station = null, Object? relationType = null}) {
    return _then(
      _$RelationStationImpl(
        station:
            null == station
                ? _value.station
                : station // ignore: cast_nullable_to_non_nullable
                    as Station,
        relationType:
            null == relationType
                ? _value.relationType
                : relationType // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RelationStationImpl implements _RelationStation {
  const _$RelationStationImpl({
    required this.station,
    required this.relationType,
  });

  factory _$RelationStationImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelationStationImplFromJson(json);

  @override
  final Station station;
  @override
  final String relationType;

  @override
  String toString() {
    return 'RelationStation(station: $station, relationType: $relationType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelationStationImpl &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.relationType, relationType) ||
                other.relationType == relationType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, station, relationType);

  /// Create a copy of RelationStation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelationStationImplCopyWith<_$RelationStationImpl> get copyWith =>
      __$$RelationStationImplCopyWithImpl<_$RelationStationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RelationStationImplToJson(this);
  }
}

abstract class _RelationStation implements RelationStation {
  const factory _RelationStation({
    required final Station station,
    required final String relationType,
  }) = _$RelationStationImpl;

  factory _RelationStation.fromJson(Map<String, dynamic> json) =
      _$RelationStationImpl.fromJson;

  @override
  Station get station;
  @override
  String get relationType;

  /// Create a copy of RelationStation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelationStationImplCopyWith<_$RelationStationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_map_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RideMapItemDto _$RideMapItemDtoFromJson(Map<String, dynamic> json) {
  return _RideMapItemDto.fromJson(json);
}

/// @nodoc
mixin _$RideMapItemDto {
  int get id => throw _privateConstructorUsedError;
  RideStatusDto get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  double? get priceAmount => throw _privateConstructorUsedError;
  double get originLat => throw _privateConstructorUsedError;
  double get originLon => throw _privateConstructorUsedError;
  String? get originTitle => throw _privateConstructorUsedError;
  double? get destinationLat => throw _privateConstructorUsedError;
  double? get destinationLon => throw _privateConstructorUsedError;
  String? get destinationTitle => throw _privateConstructorUsedError;
  String? get originCity => throw _privateConstructorUsedError;
  String? get originStreet => throw _privateConstructorUsedError;
  String? get originHouseNumber => throw _privateConstructorUsedError;
  String? get destinationCity => throw _privateConstructorUsedError;
  String? get destinationStreet => throw _privateConstructorUsedError;
  String? get destinationHouseNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideMapItemDtoCopyWith<RideMapItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideMapItemDtoCopyWith<$Res> {
  factory $RideMapItemDtoCopyWith(
          RideMapItemDto value, $Res Function(RideMapItemDto) then) =
      _$RideMapItemDtoCopyWithImpl<$Res, RideMapItemDto>;
  @useResult
  $Res call(
      {int id,
      RideStatusDto status,
      DateTime createdAt,
      double? priceAmount,
      double originLat,
      double originLon,
      String? originTitle,
      double? destinationLat,
      double? destinationLon,
      String? destinationTitle,
      String? originCity,
      String? originStreet,
      String? originHouseNumber,
      String? destinationCity,
      String? destinationStreet,
      String? destinationHouseNumber});
}

/// @nodoc
class _$RideMapItemDtoCopyWithImpl<$Res, $Val extends RideMapItemDto>
    implements $RideMapItemDtoCopyWith<$Res> {
  _$RideMapItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? createdAt = null,
    Object? priceAmount = freezed,
    Object? originLat = null,
    Object? originLon = null,
    Object? originTitle = freezed,
    Object? destinationLat = freezed,
    Object? destinationLon = freezed,
    Object? destinationTitle = freezed,
    Object? originCity = freezed,
    Object? originStreet = freezed,
    Object? originHouseNumber = freezed,
    Object? destinationCity = freezed,
    Object? destinationStreet = freezed,
    Object? destinationHouseNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RideStatusDto,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priceAmount: freezed == priceAmount
          ? _value.priceAmount
          : priceAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      originLat: null == originLat
          ? _value.originLat
          : originLat // ignore: cast_nullable_to_non_nullable
              as double,
      originLon: null == originLon
          ? _value.originLon
          : originLon // ignore: cast_nullable_to_non_nullable
              as double,
      originTitle: freezed == originTitle
          ? _value.originTitle
          : originTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationLat: freezed == destinationLat
          ? _value.destinationLat
          : destinationLat // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationLon: freezed == destinationLon
          ? _value.destinationLon
          : destinationLon // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationTitle: freezed == destinationTitle
          ? _value.destinationTitle
          : destinationTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      originCity: freezed == originCity
          ? _value.originCity
          : originCity // ignore: cast_nullable_to_non_nullable
              as String?,
      originStreet: freezed == originStreet
          ? _value.originStreet
          : originStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      originHouseNumber: freezed == originHouseNumber
          ? _value.originHouseNumber
          : originHouseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationCity: freezed == destinationCity
          ? _value.destinationCity
          : destinationCity // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationStreet: freezed == destinationStreet
          ? _value.destinationStreet
          : destinationStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationHouseNumber: freezed == destinationHouseNumber
          ? _value.destinationHouseNumber
          : destinationHouseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RideMapItemDtoImplCopyWith<$Res>
    implements $RideMapItemDtoCopyWith<$Res> {
  factory _$$RideMapItemDtoImplCopyWith(_$RideMapItemDtoImpl value,
          $Res Function(_$RideMapItemDtoImpl) then) =
      __$$RideMapItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      RideStatusDto status,
      DateTime createdAt,
      double? priceAmount,
      double originLat,
      double originLon,
      String? originTitle,
      double? destinationLat,
      double? destinationLon,
      String? destinationTitle,
      String? originCity,
      String? originStreet,
      String? originHouseNumber,
      String? destinationCity,
      String? destinationStreet,
      String? destinationHouseNumber});
}

/// @nodoc
class __$$RideMapItemDtoImplCopyWithImpl<$Res>
    extends _$RideMapItemDtoCopyWithImpl<$Res, _$RideMapItemDtoImpl>
    implements _$$RideMapItemDtoImplCopyWith<$Res> {
  __$$RideMapItemDtoImplCopyWithImpl(
      _$RideMapItemDtoImpl _value, $Res Function(_$RideMapItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? createdAt = null,
    Object? priceAmount = freezed,
    Object? originLat = null,
    Object? originLon = null,
    Object? originTitle = freezed,
    Object? destinationLat = freezed,
    Object? destinationLon = freezed,
    Object? destinationTitle = freezed,
    Object? originCity = freezed,
    Object? originStreet = freezed,
    Object? originHouseNumber = freezed,
    Object? destinationCity = freezed,
    Object? destinationStreet = freezed,
    Object? destinationHouseNumber = freezed,
  }) {
    return _then(_$RideMapItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RideStatusDto,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      priceAmount: freezed == priceAmount
          ? _value.priceAmount
          : priceAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      originLat: null == originLat
          ? _value.originLat
          : originLat // ignore: cast_nullable_to_non_nullable
              as double,
      originLon: null == originLon
          ? _value.originLon
          : originLon // ignore: cast_nullable_to_non_nullable
              as double,
      originTitle: freezed == originTitle
          ? _value.originTitle
          : originTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationLat: freezed == destinationLat
          ? _value.destinationLat
          : destinationLat // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationLon: freezed == destinationLon
          ? _value.destinationLon
          : destinationLon // ignore: cast_nullable_to_non_nullable
              as double?,
      destinationTitle: freezed == destinationTitle
          ? _value.destinationTitle
          : destinationTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      originCity: freezed == originCity
          ? _value.originCity
          : originCity // ignore: cast_nullable_to_non_nullable
              as String?,
      originStreet: freezed == originStreet
          ? _value.originStreet
          : originStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      originHouseNumber: freezed == originHouseNumber
          ? _value.originHouseNumber
          : originHouseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationCity: freezed == destinationCity
          ? _value.destinationCity
          : destinationCity // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationStreet: freezed == destinationStreet
          ? _value.destinationStreet
          : destinationStreet // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationHouseNumber: freezed == destinationHouseNumber
          ? _value.destinationHouseNumber
          : destinationHouseNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RideMapItemDtoImpl implements _RideMapItemDto {
  const _$RideMapItemDtoImpl(
      {required this.id,
      required this.status,
      required this.createdAt,
      this.priceAmount,
      required this.originLat,
      required this.originLon,
      this.originTitle,
      this.destinationLat,
      this.destinationLon,
      this.destinationTitle,
      this.originCity,
      this.originStreet,
      this.originHouseNumber,
      this.destinationCity,
      this.destinationStreet,
      this.destinationHouseNumber});

  factory _$RideMapItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RideMapItemDtoImplFromJson(json);

  @override
  final int id;
  @override
  final RideStatusDto status;
  @override
  final DateTime createdAt;
  @override
  final double? priceAmount;
  @override
  final double originLat;
  @override
  final double originLon;
  @override
  final String? originTitle;
  @override
  final double? destinationLat;
  @override
  final double? destinationLon;
  @override
  final String? destinationTitle;
  @override
  final String? originCity;
  @override
  final String? originStreet;
  @override
  final String? originHouseNumber;
  @override
  final String? destinationCity;
  @override
  final String? destinationStreet;
  @override
  final String? destinationHouseNumber;

  @override
  String toString() {
    return 'RideMapItemDto(id: $id, status: $status, createdAt: $createdAt, priceAmount: $priceAmount, originLat: $originLat, originLon: $originLon, originTitle: $originTitle, destinationLat: $destinationLat, destinationLon: $destinationLon, destinationTitle: $destinationTitle, originCity: $originCity, originStreet: $originStreet, originHouseNumber: $originHouseNumber, destinationCity: $destinationCity, destinationStreet: $destinationStreet, destinationHouseNumber: $destinationHouseNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RideMapItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.priceAmount, priceAmount) ||
                other.priceAmount == priceAmount) &&
            (identical(other.originLat, originLat) ||
                other.originLat == originLat) &&
            (identical(other.originLon, originLon) ||
                other.originLon == originLon) &&
            (identical(other.originTitle, originTitle) ||
                other.originTitle == originTitle) &&
            (identical(other.destinationLat, destinationLat) ||
                other.destinationLat == destinationLat) &&
            (identical(other.destinationLon, destinationLon) ||
                other.destinationLon == destinationLon) &&
            (identical(other.destinationTitle, destinationTitle) ||
                other.destinationTitle == destinationTitle) &&
            (identical(other.originCity, originCity) ||
                other.originCity == originCity) &&
            (identical(other.originStreet, originStreet) ||
                other.originStreet == originStreet) &&
            (identical(other.originHouseNumber, originHouseNumber) ||
                other.originHouseNumber == originHouseNumber) &&
            (identical(other.destinationCity, destinationCity) ||
                other.destinationCity == destinationCity) &&
            (identical(other.destinationStreet, destinationStreet) ||
                other.destinationStreet == destinationStreet) &&
            (identical(other.destinationHouseNumber, destinationHouseNumber) ||
                other.destinationHouseNumber == destinationHouseNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      createdAt,
      priceAmount,
      originLat,
      originLon,
      originTitle,
      destinationLat,
      destinationLon,
      destinationTitle,
      originCity,
      originStreet,
      originHouseNumber,
      destinationCity,
      destinationStreet,
      destinationHouseNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RideMapItemDtoImplCopyWith<_$RideMapItemDtoImpl> get copyWith =>
      __$$RideMapItemDtoImplCopyWithImpl<_$RideMapItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RideMapItemDtoImplToJson(
      this,
    );
  }
}

abstract class _RideMapItemDto implements RideMapItemDto {
  const factory _RideMapItemDto(
      {required final int id,
      required final RideStatusDto status,
      required final DateTime createdAt,
      final double? priceAmount,
      required final double originLat,
      required final double originLon,
      final String? originTitle,
      final double? destinationLat,
      final double? destinationLon,
      final String? destinationTitle,
      final String? originCity,
      final String? originStreet,
      final String? originHouseNumber,
      final String? destinationCity,
      final String? destinationStreet,
      final String? destinationHouseNumber}) = _$RideMapItemDtoImpl;

  factory _RideMapItemDto.fromJson(Map<String, dynamic> json) =
      _$RideMapItemDtoImpl.fromJson;

  @override
  int get id;
  @override
  RideStatusDto get status;
  @override
  DateTime get createdAt;
  @override
  double? get priceAmount;
  @override
  double get originLat;
  @override
  double get originLon;
  @override
  String? get originTitle;
  @override
  double? get destinationLat;
  @override
  double? get destinationLon;
  @override
  String? get destinationTitle;
  @override
  String? get originCity;
  @override
  String? get originStreet;
  @override
  String? get originHouseNumber;
  @override
  String? get destinationCity;
  @override
  String? get destinationStreet;
  @override
  String? get destinationHouseNumber;
  @override
  @JsonKey(ignore: true)
  _$$RideMapItemDtoImplCopyWith<_$RideMapItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

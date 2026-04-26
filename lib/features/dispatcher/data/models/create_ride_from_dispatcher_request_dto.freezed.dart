// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_ride_from_dispatcher_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateRideFromDispatcherRequestDto _$CreateRideFromDispatcherRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _CreateRideFromDispatcherRequestDto.fromJson(json);
}

/// @nodoc
mixin _$CreateRideFromDispatcherRequestDto {
  @JsonKey(name: 'customerPhone')
  String get customerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'stationId')
  int get stationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'originText')
  String? get originText => throw _privateConstructorUsedError;
  @JsonKey(name: 'destinationText')
  String? get destinationText => throw _privateConstructorUsedError;
  @JsonKey(name: 'notesText')
  String? get notesText => throw _privateConstructorUsedError;
  @JsonKey(name: 'originCity')
  String get originCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'originStreet')
  String get originStreet => throw _privateConstructorUsedError;
  @JsonKey(name: 'originHouseNumber')
  String get originHouseNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'destinationCity')
  String get destinationCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'destinationStreet')
  String get destinationStreet => throw _privateConstructorUsedError;
  @JsonKey(name: 'destinationHouseNumber')
  String get destinationHouseNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'priceAmount')
  double? get priceAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateRideFromDispatcherRequestDtoCopyWith<
          CreateRideFromDispatcherRequestDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRideFromDispatcherRequestDtoCopyWith<$Res> {
  factory $CreateRideFromDispatcherRequestDtoCopyWith(
          CreateRideFromDispatcherRequestDto value,
          $Res Function(CreateRideFromDispatcherRequestDto) then) =
      _$CreateRideFromDispatcherRequestDtoCopyWithImpl<$Res,
          CreateRideFromDispatcherRequestDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'customerPhone') String customerPhone,
      @JsonKey(name: 'stationId') int stationId,
      @JsonKey(name: 'originText') String? originText,
      @JsonKey(name: 'destinationText') String? destinationText,
      @JsonKey(name: 'notesText') String? notesText,
      @JsonKey(name: 'originCity') String originCity,
      @JsonKey(name: 'originStreet') String originStreet,
      @JsonKey(name: 'originHouseNumber') String originHouseNumber,
      @JsonKey(name: 'destinationCity') String destinationCity,
      @JsonKey(name: 'destinationStreet') String destinationStreet,
      @JsonKey(name: 'destinationHouseNumber') String destinationHouseNumber,
      @JsonKey(name: 'priceAmount') double? priceAmount});
}

/// @nodoc
class _$CreateRideFromDispatcherRequestDtoCopyWithImpl<$Res,
        $Val extends CreateRideFromDispatcherRequestDto>
    implements $CreateRideFromDispatcherRequestDtoCopyWith<$Res> {
  _$CreateRideFromDispatcherRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerPhone = null,
    Object? stationId = null,
    Object? originText = freezed,
    Object? destinationText = freezed,
    Object? notesText = freezed,
    Object? originCity = null,
    Object? originStreet = null,
    Object? originHouseNumber = null,
    Object? destinationCity = null,
    Object? destinationStreet = null,
    Object? destinationHouseNumber = null,
    Object? priceAmount = freezed,
  }) {
    return _then(_value.copyWith(
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      stationId: null == stationId
          ? _value.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as int,
      originText: freezed == originText
          ? _value.originText
          : originText // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationText: freezed == destinationText
          ? _value.destinationText
          : destinationText // ignore: cast_nullable_to_non_nullable
              as String?,
      notesText: freezed == notesText
          ? _value.notesText
          : notesText // ignore: cast_nullable_to_non_nullable
              as String?,
      originCity: null == originCity
          ? _value.originCity
          : originCity // ignore: cast_nullable_to_non_nullable
              as String,
      originStreet: null == originStreet
          ? _value.originStreet
          : originStreet // ignore: cast_nullable_to_non_nullable
              as String,
      originHouseNumber: null == originHouseNumber
          ? _value.originHouseNumber
          : originHouseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      destinationCity: null == destinationCity
          ? _value.destinationCity
          : destinationCity // ignore: cast_nullable_to_non_nullable
              as String,
      destinationStreet: null == destinationStreet
          ? _value.destinationStreet
          : destinationStreet // ignore: cast_nullable_to_non_nullable
              as String,
      destinationHouseNumber: null == destinationHouseNumber
          ? _value.destinationHouseNumber
          : destinationHouseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      priceAmount: freezed == priceAmount
          ? _value.priceAmount
          : priceAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateRideFromDispatcherRequestDtoImplCopyWith<$Res>
    implements $CreateRideFromDispatcherRequestDtoCopyWith<$Res> {
  factory _$$CreateRideFromDispatcherRequestDtoImplCopyWith(
          _$CreateRideFromDispatcherRequestDtoImpl value,
          $Res Function(_$CreateRideFromDispatcherRequestDtoImpl) then) =
      __$$CreateRideFromDispatcherRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'customerPhone') String customerPhone,
      @JsonKey(name: 'stationId') int stationId,
      @JsonKey(name: 'originText') String? originText,
      @JsonKey(name: 'destinationText') String? destinationText,
      @JsonKey(name: 'notesText') String? notesText,
      @JsonKey(name: 'originCity') String originCity,
      @JsonKey(name: 'originStreet') String originStreet,
      @JsonKey(name: 'originHouseNumber') String originHouseNumber,
      @JsonKey(name: 'destinationCity') String destinationCity,
      @JsonKey(name: 'destinationStreet') String destinationStreet,
      @JsonKey(name: 'destinationHouseNumber') String destinationHouseNumber,
      @JsonKey(name: 'priceAmount') double? priceAmount});
}

/// @nodoc
class __$$CreateRideFromDispatcherRequestDtoImplCopyWithImpl<$Res>
    extends _$CreateRideFromDispatcherRequestDtoCopyWithImpl<$Res,
        _$CreateRideFromDispatcherRequestDtoImpl>
    implements _$$CreateRideFromDispatcherRequestDtoImplCopyWith<$Res> {
  __$$CreateRideFromDispatcherRequestDtoImplCopyWithImpl(
      _$CreateRideFromDispatcherRequestDtoImpl _value,
      $Res Function(_$CreateRideFromDispatcherRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerPhone = null,
    Object? stationId = null,
    Object? originText = freezed,
    Object? destinationText = freezed,
    Object? notesText = freezed,
    Object? originCity = null,
    Object? originStreet = null,
    Object? originHouseNumber = null,
    Object? destinationCity = null,
    Object? destinationStreet = null,
    Object? destinationHouseNumber = null,
    Object? priceAmount = freezed,
  }) {
    return _then(_$CreateRideFromDispatcherRequestDtoImpl(
      customerPhone: null == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      stationId: null == stationId
          ? _value.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as int,
      originText: freezed == originText
          ? _value.originText
          : originText // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationText: freezed == destinationText
          ? _value.destinationText
          : destinationText // ignore: cast_nullable_to_non_nullable
              as String?,
      notesText: freezed == notesText
          ? _value.notesText
          : notesText // ignore: cast_nullable_to_non_nullable
              as String?,
      originCity: null == originCity
          ? _value.originCity
          : originCity // ignore: cast_nullable_to_non_nullable
              as String,
      originStreet: null == originStreet
          ? _value.originStreet
          : originStreet // ignore: cast_nullable_to_non_nullable
              as String,
      originHouseNumber: null == originHouseNumber
          ? _value.originHouseNumber
          : originHouseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      destinationCity: null == destinationCity
          ? _value.destinationCity
          : destinationCity // ignore: cast_nullable_to_non_nullable
              as String,
      destinationStreet: null == destinationStreet
          ? _value.destinationStreet
          : destinationStreet // ignore: cast_nullable_to_non_nullable
              as String,
      destinationHouseNumber: null == destinationHouseNumber
          ? _value.destinationHouseNumber
          : destinationHouseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      priceAmount: freezed == priceAmount
          ? _value.priceAmount
          : priceAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRideFromDispatcherRequestDtoImpl
    implements _CreateRideFromDispatcherRequestDto {
  const _$CreateRideFromDispatcherRequestDtoImpl(
      {@JsonKey(name: 'customerPhone') required this.customerPhone,
      @JsonKey(name: 'stationId') required this.stationId,
      @JsonKey(name: 'originText') this.originText,
      @JsonKey(name: 'destinationText') this.destinationText,
      @JsonKey(name: 'notesText') this.notesText,
      @JsonKey(name: 'originCity') required this.originCity,
      @JsonKey(name: 'originStreet') required this.originStreet,
      @JsonKey(name: 'originHouseNumber') required this.originHouseNumber,
      @JsonKey(name: 'destinationCity') required this.destinationCity,
      @JsonKey(name: 'destinationStreet') required this.destinationStreet,
      @JsonKey(name: 'destinationHouseNumber')
      required this.destinationHouseNumber,
      @JsonKey(name: 'priceAmount') this.priceAmount});

  factory _$CreateRideFromDispatcherRequestDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateRideFromDispatcherRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'customerPhone')
  final String customerPhone;
  @override
  @JsonKey(name: 'stationId')
  final int stationId;
  @override
  @JsonKey(name: 'originText')
  final String? originText;
  @override
  @JsonKey(name: 'destinationText')
  final String? destinationText;
  @override
  @JsonKey(name: 'notesText')
  final String? notesText;
  @override
  @JsonKey(name: 'originCity')
  final String originCity;
  @override
  @JsonKey(name: 'originStreet')
  final String originStreet;
  @override
  @JsonKey(name: 'originHouseNumber')
  final String originHouseNumber;
  @override
  @JsonKey(name: 'destinationCity')
  final String destinationCity;
  @override
  @JsonKey(name: 'destinationStreet')
  final String destinationStreet;
  @override
  @JsonKey(name: 'destinationHouseNumber')
  final String destinationHouseNumber;
  @override
  @JsonKey(name: 'priceAmount')
  final double? priceAmount;

  @override
  String toString() {
    return 'CreateRideFromDispatcherRequestDto(customerPhone: $customerPhone, stationId: $stationId, originText: $originText, destinationText: $destinationText, notesText: $notesText, originCity: $originCity, originStreet: $originStreet, originHouseNumber: $originHouseNumber, destinationCity: $destinationCity, destinationStreet: $destinationStreet, destinationHouseNumber: $destinationHouseNumber, priceAmount: $priceAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRideFromDispatcherRequestDtoImpl &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.originText, originText) ||
                other.originText == originText) &&
            (identical(other.destinationText, destinationText) ||
                other.destinationText == destinationText) &&
            (identical(other.notesText, notesText) ||
                other.notesText == notesText) &&
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
                other.destinationHouseNumber == destinationHouseNumber) &&
            (identical(other.priceAmount, priceAmount) ||
                other.priceAmount == priceAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      customerPhone,
      stationId,
      originText,
      destinationText,
      notesText,
      originCity,
      originStreet,
      originHouseNumber,
      destinationCity,
      destinationStreet,
      destinationHouseNumber,
      priceAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRideFromDispatcherRequestDtoImplCopyWith<
          _$CreateRideFromDispatcherRequestDtoImpl>
      get copyWith => __$$CreateRideFromDispatcherRequestDtoImplCopyWithImpl<
          _$CreateRideFromDispatcherRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRideFromDispatcherRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateRideFromDispatcherRequestDto
    implements CreateRideFromDispatcherRequestDto {
  const factory _CreateRideFromDispatcherRequestDto(
      {@JsonKey(name: 'customerPhone') required final String customerPhone,
      @JsonKey(name: 'stationId') required final int stationId,
      @JsonKey(name: 'originText') final String? originText,
      @JsonKey(name: 'destinationText') final String? destinationText,
      @JsonKey(name: 'notesText') final String? notesText,
      @JsonKey(name: 'originCity') required final String originCity,
      @JsonKey(name: 'originStreet') required final String originStreet,
      @JsonKey(name: 'originHouseNumber')
      required final String originHouseNumber,
      @JsonKey(name: 'destinationCity') required final String destinationCity,
      @JsonKey(name: 'destinationStreet')
      required final String destinationStreet,
      @JsonKey(name: 'destinationHouseNumber')
      required final String destinationHouseNumber,
      @JsonKey(name: 'priceAmount')
      final double? priceAmount}) = _$CreateRideFromDispatcherRequestDtoImpl;

  factory _CreateRideFromDispatcherRequestDto.fromJson(
          Map<String, dynamic> json) =
      _$CreateRideFromDispatcherRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'customerPhone')
  String get customerPhone;
  @override
  @JsonKey(name: 'stationId')
  int get stationId;
  @override
  @JsonKey(name: 'originText')
  String? get originText;
  @override
  @JsonKey(name: 'destinationText')
  String? get destinationText;
  @override
  @JsonKey(name: 'notesText')
  String? get notesText;
  @override
  @JsonKey(name: 'originCity')
  String get originCity;
  @override
  @JsonKey(name: 'originStreet')
  String get originStreet;
  @override
  @JsonKey(name: 'originHouseNumber')
  String get originHouseNumber;
  @override
  @JsonKey(name: 'destinationCity')
  String get destinationCity;
  @override
  @JsonKey(name: 'destinationStreet')
  String get destinationStreet;
  @override
  @JsonKey(name: 'destinationHouseNumber')
  String get destinationHouseNumber;
  @override
  @JsonKey(name: 'priceAmount')
  double? get priceAmount;
  @override
  @JsonKey(ignore: true)
  _$$CreateRideFromDispatcherRequestDtoImplCopyWith<
          _$CreateRideFromDispatcherRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

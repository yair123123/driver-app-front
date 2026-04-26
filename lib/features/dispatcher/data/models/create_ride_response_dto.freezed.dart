// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_ride_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateRideResponseDto _$CreateRideResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _CreateRideResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CreateRideResponseDto {
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateRideResponseDtoCopyWith<CreateRideResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRideResponseDtoCopyWith<$Res> {
  factory $CreateRideResponseDtoCopyWith(CreateRideResponseDto value,
          $Res Function(CreateRideResponseDto) then) =
      _$CreateRideResponseDtoCopyWithImpl<$Res, CreateRideResponseDto>;
  @useResult
  $Res call({int id, String status});
}

/// @nodoc
class _$CreateRideResponseDtoCopyWithImpl<$Res,
        $Val extends CreateRideResponseDto>
    implements $CreateRideResponseDtoCopyWith<$Res> {
  _$CreateRideResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateRideResponseDtoImplCopyWith<$Res>
    implements $CreateRideResponseDtoCopyWith<$Res> {
  factory _$$CreateRideResponseDtoImplCopyWith(
          _$CreateRideResponseDtoImpl value,
          $Res Function(_$CreateRideResponseDtoImpl) then) =
      __$$CreateRideResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String status});
}

/// @nodoc
class __$$CreateRideResponseDtoImplCopyWithImpl<$Res>
    extends _$CreateRideResponseDtoCopyWithImpl<$Res,
        _$CreateRideResponseDtoImpl>
    implements _$$CreateRideResponseDtoImplCopyWith<$Res> {
  __$$CreateRideResponseDtoImplCopyWithImpl(_$CreateRideResponseDtoImpl _value,
      $Res Function(_$CreateRideResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_$CreateRideResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateRideResponseDtoImpl implements _CreateRideResponseDto {
  const _$CreateRideResponseDtoImpl({required this.id, required this.status});

  factory _$CreateRideResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateRideResponseDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String status;

  @override
  String toString() {
    return 'CreateRideResponseDto(id: $id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRideResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRideResponseDtoImplCopyWith<_$CreateRideResponseDtoImpl>
      get copyWith => __$$CreateRideResponseDtoImplCopyWithImpl<
          _$CreateRideResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateRideResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateRideResponseDto implements CreateRideResponseDto {
  const factory _CreateRideResponseDto(
      {required final int id,
      required final String status}) = _$CreateRideResponseDtoImpl;

  factory _CreateRideResponseDto.fromJson(Map<String, dynamic> json) =
      _$CreateRideResponseDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$CreateRideResponseDtoImplCopyWith<_$CreateRideResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

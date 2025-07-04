// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'neighborhood.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Neighborhood _$NeighborhoodFromJson(Map<String, dynamic> json) {
  return _Neighborhood.fromJson(json);
}

/// @nodoc
mixin _$Neighborhood {
  String get name => throw _privateConstructorUsedError;
  double get frequency => throw _privateConstructorUsedError;
  List<Street> get streets => throw _privateConstructorUsedError;

  /// Serializes this Neighborhood to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Neighborhood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NeighborhoodCopyWith<Neighborhood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NeighborhoodCopyWith<$Res> {
  factory $NeighborhoodCopyWith(
    Neighborhood value,
    $Res Function(Neighborhood) then,
  ) = _$NeighborhoodCopyWithImpl<$Res, Neighborhood>;
  @useResult
  $Res call({String name, double frequency, List<Street> streets});
}

/// @nodoc
class _$NeighborhoodCopyWithImpl<$Res, $Val extends Neighborhood>
    implements $NeighborhoodCopyWith<$Res> {
  _$NeighborhoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Neighborhood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? frequency = null,
    Object? streets = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            frequency:
                null == frequency
                    ? _value.frequency
                    : frequency // ignore: cast_nullable_to_non_nullable
                        as double,
            streets:
                null == streets
                    ? _value.streets
                    : streets // ignore: cast_nullable_to_non_nullable
                        as List<Street>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NeighborhoodImplCopyWith<$Res>
    implements $NeighborhoodCopyWith<$Res> {
  factory _$$NeighborhoodImplCopyWith(
    _$NeighborhoodImpl value,
    $Res Function(_$NeighborhoodImpl) then,
  ) = __$$NeighborhoodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double frequency, List<Street> streets});
}

/// @nodoc
class __$$NeighborhoodImplCopyWithImpl<$Res>
    extends _$NeighborhoodCopyWithImpl<$Res, _$NeighborhoodImpl>
    implements _$$NeighborhoodImplCopyWith<$Res> {
  __$$NeighborhoodImplCopyWithImpl(
    _$NeighborhoodImpl _value,
    $Res Function(_$NeighborhoodImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Neighborhood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? frequency = null,
    Object? streets = null,
  }) {
    return _then(
      _$NeighborhoodImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        frequency:
            null == frequency
                ? _value.frequency
                : frequency // ignore: cast_nullable_to_non_nullable
                    as double,
        streets:
            null == streets
                ? _value._streets
                : streets // ignore: cast_nullable_to_non_nullable
                    as List<Street>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NeighborhoodImpl implements _Neighborhood {
  const _$NeighborhoodImpl({
    required this.name,
    required this.frequency,
    required final List<Street> streets,
  }) : _streets = streets;

  factory _$NeighborhoodImpl.fromJson(Map<String, dynamic> json) =>
      _$$NeighborhoodImplFromJson(json);

  @override
  final String name;
  @override
  final double frequency;
  final List<Street> _streets;
  @override
  List<Street> get streets {
    if (_streets is EqualUnmodifiableListView) return _streets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streets);
  }

  @override
  String toString() {
    return 'Neighborhood(name: $name, frequency: $frequency, streets: $streets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NeighborhoodImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            const DeepCollectionEquality().equals(other._streets, _streets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    frequency,
    const DeepCollectionEquality().hash(_streets),
  );

  /// Create a copy of Neighborhood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NeighborhoodImplCopyWith<_$NeighborhoodImpl> get copyWith =>
      __$$NeighborhoodImplCopyWithImpl<_$NeighborhoodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NeighborhoodImplToJson(this);
  }
}

abstract class _Neighborhood implements Neighborhood {
  const factory _Neighborhood({
    required final String name,
    required final double frequency,
    required final List<Street> streets,
  }) = _$NeighborhoodImpl;

  factory _Neighborhood.fromJson(Map<String, dynamic> json) =
      _$NeighborhoodImpl.fromJson;

  @override
  String get name;
  @override
  double get frequency;
  @override
  List<Street> get streets;

  /// Create a copy of Neighborhood
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NeighborhoodImplCopyWith<_$NeighborhoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispatch_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DispatchData _$DispatchDataFromJson(Map<String, dynamic> json) {
  return _DispatchData.fromJson(json);
}

/// @nodoc
mixin _$DispatchData {
  List<String> get comments => throw _privateConstructorUsedError;
  Map<String, List<int>> get prices => throw _privateConstructorUsedError;
  List<City> get cities => throw _privateConstructorUsedError;

  /// Serializes this DispatchData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DispatchData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DispatchDataCopyWith<DispatchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DispatchDataCopyWith<$Res> {
  factory $DispatchDataCopyWith(
    DispatchData value,
    $Res Function(DispatchData) then,
  ) = _$DispatchDataCopyWithImpl<$Res, DispatchData>;
  @useResult
  $Res call({
    List<String> comments,
    Map<String, List<int>> prices,
    List<City> cities,
  });
}

/// @nodoc
class _$DispatchDataCopyWithImpl<$Res, $Val extends DispatchData>
    implements $DispatchDataCopyWith<$Res> {
  _$DispatchDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DispatchData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? prices = null,
    Object? cities = null,
  }) {
    return _then(
      _value.copyWith(
            comments:
                null == comments
                    ? _value.comments
                    : comments // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            prices:
                null == prices
                    ? _value.prices
                    : prices // ignore: cast_nullable_to_non_nullable
                        as Map<String, List<int>>,
            cities:
                null == cities
                    ? _value.cities
                    : cities // ignore: cast_nullable_to_non_nullable
                        as List<City>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DispatchDataImplCopyWith<$Res>
    implements $DispatchDataCopyWith<$Res> {
  factory _$$DispatchDataImplCopyWith(
    _$DispatchDataImpl value,
    $Res Function(_$DispatchDataImpl) then,
  ) = __$$DispatchDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> comments,
    Map<String, List<int>> prices,
    List<City> cities,
  });
}

/// @nodoc
class __$$DispatchDataImplCopyWithImpl<$Res>
    extends _$DispatchDataCopyWithImpl<$Res, _$DispatchDataImpl>
    implements _$$DispatchDataImplCopyWith<$Res> {
  __$$DispatchDataImplCopyWithImpl(
    _$DispatchDataImpl _value,
    $Res Function(_$DispatchDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DispatchData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
    Object? prices = null,
    Object? cities = null,
  }) {
    return _then(
      _$DispatchDataImpl(
        comments:
            null == comments
                ? _value._comments
                : comments // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        prices:
            null == prices
                ? _value._prices
                : prices // ignore: cast_nullable_to_non_nullable
                    as Map<String, List<int>>,
        cities:
            null == cities
                ? _value._cities
                : cities // ignore: cast_nullable_to_non_nullable
                    as List<City>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DispatchDataImpl implements _DispatchData {
  const _$DispatchDataImpl({
    required final List<String> comments,
    required final Map<String, List<int>> prices,
    required final List<City> cities,
  }) : _comments = comments,
       _prices = prices,
       _cities = cities;

  factory _$DispatchDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DispatchDataImplFromJson(json);

  final List<String> _comments;
  @override
  List<String> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  final Map<String, List<int>> _prices;
  @override
  Map<String, List<int>> get prices {
    if (_prices is EqualUnmodifiableMapView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_prices);
  }

  final List<City> _cities;
  @override
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'DispatchData(comments: $comments, prices: $prices, cities: $cities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DispatchDataImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_comments),
    const DeepCollectionEquality().hash(_prices),
    const DeepCollectionEquality().hash(_cities),
  );

  /// Create a copy of DispatchData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DispatchDataImplCopyWith<_$DispatchDataImpl> get copyWith =>
      __$$DispatchDataImplCopyWithImpl<_$DispatchDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DispatchDataImplToJson(this);
  }
}

abstract class _DispatchData implements DispatchData {
  const factory _DispatchData({
    required final List<String> comments,
    required final Map<String, List<int>> prices,
    required final List<City> cities,
  }) = _$DispatchDataImpl;

  factory _DispatchData.fromJson(Map<String, dynamic> json) =
      _$DispatchDataImpl.fromJson;

  @override
  List<String> get comments;
  @override
  Map<String, List<int>> get prices;
  @override
  List<City> get cities;

  /// Create a copy of DispatchData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DispatchDataImplCopyWith<_$DispatchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

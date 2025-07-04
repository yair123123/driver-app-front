// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initial_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InitialScreen _$InitialScreenFromJson(Map<String, dynamic> json) {
  return _InitialScreen.fromJson(json);
}

/// @nodoc
mixin _$InitialScreen {
  List<City> get cities => throw _privateConstructorUsedError;
  Map<String, List<int>> get prices => throw _privateConstructorUsedError;
  List<String> get comments => throw _privateConstructorUsedError;

  /// Serializes this InitialScreen to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InitialScreen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitialScreenCopyWith<InitialScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialScreenCopyWith<$Res> {
  factory $InitialScreenCopyWith(
    InitialScreen value,
    $Res Function(InitialScreen) then,
  ) = _$InitialScreenCopyWithImpl<$Res, InitialScreen>;
  @useResult
  $Res call({
    List<City> cities,
    Map<String, List<int>> prices,
    List<String> comments,
  });
}

/// @nodoc
class _$InitialScreenCopyWithImpl<$Res, $Val extends InitialScreen>
    implements $InitialScreenCopyWith<$Res> {
  _$InitialScreenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitialScreen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
    Object? prices = null,
    Object? comments = null,
  }) {
    return _then(
      _value.copyWith(
            cities:
                null == cities
                    ? _value.cities
                    : cities // ignore: cast_nullable_to_non_nullable
                        as List<City>,
            prices:
                null == prices
                    ? _value.prices
                    : prices // ignore: cast_nullable_to_non_nullable
                        as Map<String, List<int>>,
            comments:
                null == comments
                    ? _value.comments
                    : comments // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InitialScreenImplCopyWith<$Res>
    implements $InitialScreenCopyWith<$Res> {
  factory _$$InitialScreenImplCopyWith(
    _$InitialScreenImpl value,
    $Res Function(_$InitialScreenImpl) then,
  ) = __$$InitialScreenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<City> cities,
    Map<String, List<int>> prices,
    List<String> comments,
  });
}

/// @nodoc
class __$$InitialScreenImplCopyWithImpl<$Res>
    extends _$InitialScreenCopyWithImpl<$Res, _$InitialScreenImpl>
    implements _$$InitialScreenImplCopyWith<$Res> {
  __$$InitialScreenImplCopyWithImpl(
    _$InitialScreenImpl _value,
    $Res Function(_$InitialScreenImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InitialScreen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
    Object? prices = null,
    Object? comments = null,
  }) {
    return _then(
      _$InitialScreenImpl(
        cities:
            null == cities
                ? _value._cities
                : cities // ignore: cast_nullable_to_non_nullable
                    as List<City>,
        prices:
            null == prices
                ? _value._prices
                : prices // ignore: cast_nullable_to_non_nullable
                    as Map<String, List<int>>,
        comments:
            null == comments
                ? _value._comments
                : comments // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InitialScreenImpl implements _InitialScreen {
  const _$InitialScreenImpl({
    required final List<City> cities,
    required final Map<String, List<int>> prices,
    required final List<String> comments,
  }) : _cities = cities,
       _prices = prices,
       _comments = comments;

  factory _$InitialScreenImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialScreenImplFromJson(json);

  final List<City> _cities;
  @override
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final Map<String, List<int>> _prices;
  @override
  Map<String, List<int>> get prices {
    if (_prices is EqualUnmodifiableMapView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_prices);
  }

  final List<String> _comments;
  @override
  List<String> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'InitialScreen(cities: $cities, prices: $prices, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialScreenImpl &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_cities),
    const DeepCollectionEquality().hash(_prices),
    const DeepCollectionEquality().hash(_comments),
  );

  /// Create a copy of InitialScreen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialScreenImplCopyWith<_$InitialScreenImpl> get copyWith =>
      __$$InitialScreenImplCopyWithImpl<_$InitialScreenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialScreenImplToJson(this);
  }
}

abstract class _InitialScreen implements InitialScreen {
  const factory _InitialScreen({
    required final List<City> cities,
    required final Map<String, List<int>> prices,
    required final List<String> comments,
  }) = _$InitialScreenImpl;

  factory _InitialScreen.fromJson(Map<String, dynamic> json) =
      _$InitialScreenImpl.fromJson;

  @override
  List<City> get cities;
  @override
  Map<String, List<int>> get prices;
  @override
  List<String> get comments;

  /// Create a copy of InitialScreen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialScreenImplCopyWith<_$InitialScreenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

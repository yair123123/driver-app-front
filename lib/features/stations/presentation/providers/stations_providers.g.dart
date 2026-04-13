// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stations_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$allStationsHash() => r'd7c3d321806954ca9a899b6f1fe3c26b57baba36';

/// See also [allStations].
@ProviderFor(allStations)
final allStationsProvider = FutureProvider<List<Station>>.internal(
  allStations,
  name: r'allStationsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allStationsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AllStationsRef = FutureProviderRef<List<Station>>;
String _$stationsMapHash() => r'41138fda26bb890213f1917ce48eab66c41a92a0';

/// See also [stationsMap].
@ProviderFor(stationsMap)
final stationsMapProvider =
    AutoDisposeFutureProvider<Map<int, Station>>.internal(
  stationsMap,
  name: r'stationsMapProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$stationsMapHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StationsMapRef = AutoDisposeFutureProviderRef<Map<int, Station>>;
String _$stationsByIdsHash() => r'7526343bab004ae0175e526a986e362a38fc618f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [stationsByIds].
@ProviderFor(stationsByIds)
const stationsByIdsProvider = StationsByIdsFamily();

/// See also [stationsByIds].
class StationsByIdsFamily extends Family<AsyncValue<List<Station>>> {
  /// See also [stationsByIds].
  const StationsByIdsFamily();

  /// See also [stationsByIds].
  StationsByIdsProvider call(
    StationIdsFilter filter,
  ) {
    return StationsByIdsProvider(
      filter,
    );
  }

  @override
  StationsByIdsProvider getProviderOverride(
    covariant StationsByIdsProvider provider,
  ) {
    return call(
      provider.filter,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'stationsByIdsProvider';
}

/// See also [stationsByIds].
class StationsByIdsProvider extends AutoDisposeFutureProvider<List<Station>> {
  /// See also [stationsByIds].
  StationsByIdsProvider(
    StationIdsFilter filter,
  ) : this._internal(
          (ref) => stationsByIds(
            ref as StationsByIdsRef,
            filter,
          ),
          from: stationsByIdsProvider,
          name: r'stationsByIdsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$stationsByIdsHash,
          dependencies: StationsByIdsFamily._dependencies,
          allTransitiveDependencies:
              StationsByIdsFamily._allTransitiveDependencies,
          filter: filter,
        );

  StationsByIdsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.filter,
  }) : super.internal();

  final StationIdsFilter filter;

  @override
  Override overrideWith(
    FutureOr<List<Station>> Function(StationsByIdsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StationsByIdsProvider._internal(
        (ref) => create(ref as StationsByIdsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        filter: filter,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Station>> createElement() {
    return _StationsByIdsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StationsByIdsProvider && other.filter == filter;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, filter.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StationsByIdsRef on AutoDisposeFutureProviderRef<List<Station>> {
  /// The parameter `filter` of this provider.
  StationIdsFilter get filter;
}

class _StationsByIdsProviderElement
    extends AutoDisposeFutureProviderElement<List<Station>>
    with StationsByIdsRef {
  _StationsByIdsProviderElement(super.provider);

  @override
  StationIdsFilter get filter => (origin as StationsByIdsProvider).filter;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

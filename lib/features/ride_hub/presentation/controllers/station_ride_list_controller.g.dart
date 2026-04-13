// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_ride_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stationRideListControllerHash() =>
    r'538dfd986039aa9e324a82982bc5b4688bdc126d';

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

abstract class _$StationRideListController
    extends BuildlessAutoDisposeAsyncNotifier<StationRideListState> {
  late final int stationId;

  FutureOr<StationRideListState> build(
    int stationId,
  );
}

/// See also [StationRideListController].
@ProviderFor(StationRideListController)
const stationRideListControllerProvider = StationRideListControllerFamily();

/// See also [StationRideListController].
class StationRideListControllerFamily
    extends Family<AsyncValue<StationRideListState>> {
  /// See also [StationRideListController].
  const StationRideListControllerFamily();

  /// See also [StationRideListController].
  StationRideListControllerProvider call(
    int stationId,
  ) {
    return StationRideListControllerProvider(
      stationId,
    );
  }

  @override
  StationRideListControllerProvider getProviderOverride(
    covariant StationRideListControllerProvider provider,
  ) {
    return call(
      provider.stationId,
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
  String? get name => r'stationRideListControllerProvider';
}

/// See also [StationRideListController].
class StationRideListControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<StationRideListController,
        StationRideListState> {
  /// See also [StationRideListController].
  StationRideListControllerProvider(
    int stationId,
  ) : this._internal(
          () => StationRideListController()..stationId = stationId,
          from: stationRideListControllerProvider,
          name: r'stationRideListControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$stationRideListControllerHash,
          dependencies: StationRideListControllerFamily._dependencies,
          allTransitiveDependencies:
              StationRideListControllerFamily._allTransitiveDependencies,
          stationId: stationId,
        );

  StationRideListControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.stationId,
  }) : super.internal();

  final int stationId;

  @override
  FutureOr<StationRideListState> runNotifierBuild(
    covariant StationRideListController notifier,
  ) {
    return notifier.build(
      stationId,
    );
  }

  @override
  Override overrideWith(StationRideListController Function() create) {
    return ProviderOverride(
      origin: this,
      override: StationRideListControllerProvider._internal(
        () => create()..stationId = stationId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        stationId: stationId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<StationRideListController,
      StationRideListState> createElement() {
    return _StationRideListControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StationRideListControllerProvider &&
        other.stationId == stationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, stationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StationRideListControllerRef
    on AutoDisposeAsyncNotifierProviderRef<StationRideListState> {
  /// The parameter `stationId` of this provider.
  int get stationId;
}

class _StationRideListControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<StationRideListController,
        StationRideListState> with StationRideListControllerRef {
  _StationRideListControllerProviderElement(super.provider);

  @override
  int get stationId => (origin as StationRideListControllerProvider).stationId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

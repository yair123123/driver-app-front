import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

final connectivityProvider = Provider((ref) => Connectivity());
final internetConnectionProvider = Provider((ref) => InternetConnection());

final networkStatusProvider = StreamProvider<bool>((ref) async* {
  final connectivity = ref.watch(connectivityProvider);
  final internet = ref.watch(internetConnectionProvider);

  bool? lastEmitted;

  Future<bool> computeStatus(List<ConnectivityResult>? results) async {
    try {
      final currentResults = results ?? await connectivity.checkConnectivity();
      final hasInterface = currentResults.isNotEmpty &&
          !currentResults.contains(ConnectivityResult.none);

      if (!hasInterface) return false;

      return await internet.hasInternetAccess;
    } catch (e, st) {
      debugPrint('computeStatus failed: $e\n$st');
      return false;
    }
  }

  final initial = await computeStatus(null);
  lastEmitted = initial;
  yield initial;

  await for (final results in connectivity.onConnectivityChanged) {
    final next = await computeStatus(results);
    if (next == lastEmitted) continue;
    lastEmitted = next;
    yield next;
  }
});

final reconnectSignalProvider = StreamProvider<void>((ref) async* {
  final statusStream = ref.watch(networkStatusProvider.stream);
  bool? previous;

  await for (final current in statusStream) {
    final isReconnect = previous == false && current == true;
    previous = current;

    if (isReconnect) {
      yield null;
    }
  }
});

mixin AutoRefreshOnReconnect<T> on AsyncNotifier<T> {
  bool _reconnectListenerInitialized = false;

  void setupAutoRefreshOnReconnect({bool onlyWhenError = true}) {
    if (_reconnectListenerInitialized) return;
    _reconnectListenerInitialized = true;

    ref.listen<AsyncValue<void>>(reconnectSignalProvider, (prev, next) {
      if (next is! AsyncData<void>) return;
      if (onlyWhenError && state is! AsyncError<T>) return;

      ref.invalidateSelf();
    });
  }
}
import 'package:driver_app/core/env/config_service.dart';
import 'package:driver_app/features/auth/presentation/notifiers/creds_notifier.dart';
import 'package:driver_app/features/realtime/data/datasources/realtime_remote_datasource.dart';
import 'package:driver_app/features/realtime/data/repositories/realtime_repository_impl.dart';
import 'package:driver_app/features/realtime/domain/entities/realtime_connection_state.dart';
import 'package:driver_app/features/realtime/domain/entities/socket_envelope.dart';
import 'package:driver_app/features/realtime/domain/repositories/realtime_repository.dart';
import 'package:driver_app/features/realtime/presentation/controllers/realtime_connection_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final realtimeWebSocketUriProvider = Provider<Uri>((ref) {
  final apiBaseUrl = ref.watch(appConfigProvider).api.baseUrl;
  // TODO(realtime): Replace "/ws" with the backend realtime endpoint once fixed.
  return _webSocketUriFromApiBaseUrl(apiBaseUrl, path: '/ws');
});

final realtimeRemoteDataSourceProvider = Provider<RealtimeRemoteDataSource>((
  ref,
) {
  final dataSource = RealtimeRemoteDataSourceImpl(
    socketUri: ref.watch(realtimeWebSocketUriProvider),
    accessTokenGetter: () => ref.read(authSessionProvider)?.accessToken,
  );

  ref.onDispose(dataSource.dispose);

  return dataSource;
});

final realtimeRepositoryProvider = Provider<RealtimeRepository>((ref) {
  return RealtimeRepositoryImpl(ref.watch(realtimeRemoteDataSourceProvider));
});

final socketEnvelopeStreamProvider = StreamProvider<SocketEnvelope>((ref) {
  final repository = ref.watch(realtimeRepositoryProvider);
  return repository.events;
});

final realtimeConnectionStatesProvider =
    StreamProvider<RealtimeConnectionState>((ref) {
      final repository = ref.watch(realtimeRepositoryProvider);
      return repository.connectionStates;
    });

final realtimeConnectionControllerProvider =
    NotifierProvider<RealtimeConnectionController, RealtimeConnectionState>(
      RealtimeConnectionController.new,
    );

Uri _webSocketUriFromApiBaseUrl(String apiBaseUrl, {required String path}) {
  final trimmed = apiBaseUrl.trim();
  final normalized = trimmed.contains('://') ? trimmed : 'https://$trimmed';
  final uri = Uri.parse(normalized);
  final scheme = uri.scheme == 'http' ? 'ws' : 'wss';

  return uri.replace(
    scheme: scheme,
    path: path,
    queryParameters: uri.queryParameters.isEmpty ? null : uri.queryParameters,
  );
}

import 'package:driver_app/core/env/config_service.dart';
import 'package:riverpod/riverpod.dart';
import 'package:share_plus/share_plus.dart';

const LANG = "lang";

class RideShareService {
  const RideShareService({required this.publicHost});

  final String publicHost;

  Uri buildRideUri({
    required String rideId,
    required String langCode,
    required String areaCode,
  }) {
    return Uri.https(publicHost, '/share/a/$rideId', {
      'lang': langCode,
      'code': areaCode,
    });
  }

  Uri buildAMessageUri({
    required String messageId,
    required String groupId,
    required String langCode,
    required String areaCode,
  }) {
    return Uri.https(publicHost, '/share/m/$groupId/$messageId', {
      'lang': langCode,
      'code': areaCode,
    });
  }

  Future<void> shareRide({
    required String rideId,
    required String langCode,
    required String areaCode,
  }) async {
    final uri = buildRideUri(
      rideId: rideId,
      langCode: langCode,
      areaCode: areaCode,
    );
    await SharePlus.instance.share(ShareParams(uri: uri));
  }

  Future<void> shareMessage({
    required String groupId,
    required String messageId,
    required String langCode,
    required String areaCode,
  }) async {
    final uri = buildAMessageUri(
      messageId: messageId,
      groupId: groupId,
      langCode: langCode,
      areaCode: areaCode,
    );
    await SharePlus.instance.share(ShareParams(uri: uri));
  }
}

final rideShareServiceProvider = Provider(
  (ref) => RideShareService(
    publicHost: ref.read(configServiceProvider).current().api.baseUrl,
  ),
);

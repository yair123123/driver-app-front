import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:driver_app/core/logger/firebase_logger.dart';
import 'package:driver_app/features/version/presentation/providers/version_providers.dart';
import 'package:driver_app/features/version/presentation/states/app_version_state.dart';

class ForceUpdatePage extends ConsumerWidget {
  const ForceUpdatePage({super.key});

  Future<void> _openUpdateUrl(String url) async {
    final uri = Uri.tryParse(url);
    if (uri == null) {
      FirebaseLogger.e('Invalid force update URL', error: url);
      return;
    }

    final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!launched) {
      FirebaseLogger.w('Force update URL did not launch', extra: {'url': url});
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final versionState = ref.watch(appVersionControllerProvider);
    final versionInfo =
        versionState is AppVersionForceUpdateRequired
            ? versionState.versionInfo
            : versionState.versionInfoOrNull;
    final updateMessage = versionInfo?.updateMessage?.trim();
    final updateUrl = versionInfo?.updateUrl?.trim();

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.system_update_alt_rounded, size: 72),
                  const SizedBox(height: 24),
                  const Text(
                    'Update Required',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    updateMessage?.isNotEmpty == true
                        ? updateMessage!
                        : 'This version of the app is no longer supported. Please update the app to continue.',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                  if (updateUrl?.isNotEmpty == true) ...[
                    const SizedBox(height: 32),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => _openUpdateUrl(updateUrl!),
                        child: const Text('Update now'),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

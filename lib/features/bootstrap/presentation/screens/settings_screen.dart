import 'package:driver_app/features/bootstrap/presentation/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    final nutifier = ref.read(settingsProvider.notifier);

    return Scaffold(
      body:ListView(
              padding: const EdgeInsets.all(16),
              children: [
                SwitchListTile(
                  value: settings.isDarkMode,
                  title: const Text('מצב כהה'),
                  onChanged: (value) =>
                      nutifier.updateDarkMode(value),
                ),
              ],
            ),
    );
  }
}

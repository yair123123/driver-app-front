import 'package:driver_app/core/settings/presentation/providers/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      body: settings == null
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                SwitchListTile(
                  value: settings.isDarkMode,
                  title: const Text('מצב כהה'),
                  onChanged: (value) =>
                      ref.read(settingsProvider.notifier).updateDarkMode(value),
                ),
              ],
            ),
    );
  }
}

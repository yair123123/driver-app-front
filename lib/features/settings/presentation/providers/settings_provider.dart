import 'package:driver_app/features/settings/domain/entities/settings.dart';
import 'package:driver_app/features/settings/presentation/notifiers/settings_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsProvider = AsyncNotifierProvider<SettingsNotifier, Settings>(
  SettingsNotifier.new,
);

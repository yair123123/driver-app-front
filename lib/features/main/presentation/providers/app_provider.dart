import 'package:driver_app/features/main/presentation/notifiers/app_notifier.dart';
import 'package:driver_app/features/main/presentation/states/appState.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appInitialProvider = NotifierProvider<AppNotifier,AppState>(
  () => AppNotifier()
);

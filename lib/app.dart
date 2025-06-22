import 'package:driver_app/core/providers/settings_provider.dart';
import 'package:driver_app/core/router/app_router.dart';
import 'package:driver_app/features/main/presentation/providers/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:driver_app/core/theme/app_theme.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authInitListenerProvider);
    final settingsState = ref.watch(settingsProvider);
    final router = ref.watch(routerProvider);
  final app = ref.watch(appInitialProvider);
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      locale: const Locale('he'),
      supportedLocales: const [Locale('he')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      
      title: "דרייבר 10",
      theme: app.isRideActive ? AppTheme.activeRideTheme : AppTheme.lightTheme ,
      darkTheme: AppTheme.darkTheme,
      themeMode:
          settingsState?.isDarkMode == true ? ThemeMode.dark : ThemeMode.light,
    );
  }
}

import 'package:driver_app/core/app/app_state_notifier.dart';
import 'package:driver_app/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:driver_app/core/theme/app_theme.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);
  final app = ref.watch(appStateNotifierProvider);
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
      theme: app.activeRide != null ? AppTheme.activeRideTheme : AppTheme.lightTheme ,
      darkTheme: AppTheme.darkTheme,
      themeMode:
          app.settings?.isDarkMode == true ? ThemeMode.dark : ThemeMode.light,
    );
  }
}

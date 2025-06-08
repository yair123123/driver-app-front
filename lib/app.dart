import 'package:driver_app/core/providers/settings_provider.dart';
import 'package:driver_app/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:driver_app/core/theme/app_theme.dart';


class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider); 
        final router = ref.watch(routerProvider); 

    return settings.when(
      loading: () => const MaterialApp(
        home: Scaffold(body: Center(child: CircularProgressIndicator())),
      ),
      error: (error, stack) => MaterialApp(
        home: Scaffold(body: Center(child: Text('שגיאה בטעינת הגדרות: $error'))),
      ),
      data: (settingsData) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          locale: const Locale('he'),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          title: "דרייבר 10",
          routerConfig: router,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: settingsData!.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        );
      },
    );
  }
}


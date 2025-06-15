import 'package:driver_app/core/providers/auth_provider.dart';
import 'package:driver_app/core/router/app_router.dart';
import 'package:driver_app/features/auth/presentation/providers/auth_state.dart';
import 'package:driver_app/features/main/presentation/notifiers/app_notifier.dart';
import 'package:driver_app/features/main/presentation/providers/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:driver_app/core/theme/app_theme.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  bool _didListen = false;

  @override
  Widget build(BuildContext context) {
    if (!_didListen) {
      _didListen = true;

      ref.listen(authProvider, (previous, next) {
        final appState = ref.read(appInitialProvider);

        if (next.authStatus == AuthStatus.authenticated &&
            appState.status == AppReadyStatus.idle) {
          ref.read(appInitialProvider.notifier).init(next.token!);
        }
      });
    }

    final router = ref.watch(routerProvider);

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
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}

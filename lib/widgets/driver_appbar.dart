import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../features/auth/domain/entities/user.dart';

class DriverAppBar extends StatefulWidget implements PreferredSizeWidget {
  final User user;
  const DriverAppBar({super.key, required this.user});
  @override
  State<StatefulWidget> createState() => _DriverAppBarState();
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _DriverAppBarState extends State<DriverAppBar> {
  bool isConnectingToIternet = false;
  late final StreamSubscription<InternetStatus> internetStatusSubscription;
  late final AppLifecycleListener? appLifecycleListener;
  @override
  void initState() {
    super.initState();
    internetStatusSubscription = InternetConnection().onStatusChange.listen((
      status,
    ) {
      switch (status) {
        case InternetStatus.connected:
          setState(() {
            isConnectingToIternet = true;
          });
          break;
        case InternetStatus.disconnected:
          setState(() {
            isConnectingToIternet = false;
          });
          break;
      }
    });
  }

  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textColor = theme.colorScheme.onPrimary;

    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: theme.colorScheme.primary,

      elevation: 2,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                widget.user.username,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(width: 8),
              if (widget.user.isDispatcher)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "סדרן",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.8,
                    ),
                  ),
                ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.amber[700], size: 20),
              const SizedBox(width: 4),
              Text(
                "${widget.user.rating}",
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 16),
              if (!isConnectingToIternet)
                const Icon(Icons.signal_wifi_off, color: Colors.red, size: 20),
            ],
          ),
        ],
      ),
    );
  }
}

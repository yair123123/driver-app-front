import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/l10n/app_localizations.dart';
import 'package:driver_app/core/services/connection_service.dart';

class NetworkIcon extends ConsumerWidget {
  const NetworkIcon({super.key});

  void _showNetworkDialog(BuildContext context, bool hasInternet) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => NetworkStatusDialog(hasInternet: hasInternet),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncSt = ref.watch(networkStatusProvider);

    return asyncSt.when(
      data: (hasInternet) {
        if (hasInternet) return const SizedBox.shrink();

        return GestureDetector(
          onTap: () => _showNetworkDialog(context, hasInternet),
          child: UnconstrainedBox(
            child: Container(
            
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.red.withAlpha((0.15 * 255).round()),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Colors.red.withAlpha((0.3 * 255).round()),
                  width: 0.5,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.cloud_off_outlined, color: Colors.red, size: 14),
                  SizedBox(width: 4),
                  _BlinkDot(),
                ],
              ),
            ),
          ),
        );
      },
      loading: () => Container(
        padding: const EdgeInsets.all(4),
        child: const SizedBox(
          width: 12,
          height: 12,
          child: CircularProgressIndicator(strokeWidth: 1.5),
        ),
      ),
      error: (_, __) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.grey.withAlpha((0.15 * 255).round()),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(Icons.error_outline, color: Colors.grey[600], size: 14),
      ),
    );
  }
}

class _BlinkDot extends StatefulWidget {
  const _BlinkDot();

  @override
  State<_BlinkDot> createState() => _BlinkDotState();
}

class _BlinkDotState extends State<_BlinkDot>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c;
  late final Animation<double> _a;

  @override
  void initState() {
    super.initState();
    _c = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);
    _a = Tween(begin: 0.4, end: 1.0).animate(_c);
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _a,
      child: Container(
        width: 6,
        height: 6,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
      ),
    );
  }
}

class NetworkStatusDialog extends StatelessWidget {
  final bool hasInternet;

  const NetworkStatusDialog({super.key, required this.hasInternet});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    final title = hasInternet
        ? l10n.networkStatusOfflineTitle
        : l10n.networkStatusOfflineTitle;
    final message = hasInternet
        ? l10n.networkStatusConnected
        : l10n.networkStatusOfflineMessage;

    final color = hasInternet ? Colors.green : Colors.red;

    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha((0.1 * 255).round()),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                hasInternet
                    ? Icons.cloud_done_rounded
                    : Icons.cloud_off_rounded,
                size: 48,
                color: color,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              message,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(l10n.networkStatusDismiss),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:news_app/features/permission/widgets/permission_status_banner.dart';
// import 'package:news_app/l10n/app_localizations.dart';
// import 'package:news_app/features/permission/services/notification_permission_service.dart';

// class PermissionHeader extends StatelessWidget {
//   final NotificationAuth? status;
//   final bool isBusy;
//   final Future<void> Function() onRequestPermission;
//   final AppLocalizations l10n;

//   const PermissionHeader({
//     super.key,
//     required this.status,
//     required this.isBusy,
//     required this.onRequestPermission,
//     required this.l10n,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final needsBanner = status == NotificationAuth.denied ||
//         status == NotificationAuth.permanentlyDenied;

//     if (needsBanner) {
//       return PermissionStatusBanner(
//         status: status,
//         onTryAgain: onRequestPermission,
//       );
//     }

//     final isGranted = status == NotificationAuth.granted;

//     return FilledButton.icon(
//       style: ButtonStyle(
//         backgroundColor: WidgetStateProperty.all(
//           isGranted ? Colors.green : null,
//         ),
//       ),
//       icon: Icon(
//         Icons.notifications_active_outlined,
//         color: isGranted ? Colors.white : null,
//       ),
//       label: _buildLabel(isBusy: isBusy, isGranted: isGranted, l10n: l10n),
//       onPressed: (isBusy || isGranted) ? null : onRequestPermission,
//     );
//   }

//   Widget _buildLabel({
//     required bool isBusy,
//     required bool isGranted,
//     required AppLocalizations l10n,
//   }) {
//     if (isBusy) {
//       return Row(
//         mainAxisSize: MainAxisSize.min,
//         children: const [
//           SizedBox(
//             width: 16,
//             height: 16,
//             child: CircularProgressIndicator(strokeWidth: 2),
//           ),
//           SizedBox(width: 8),
//           Text('...'),
//         ],
//       );
//     }
//     if (isGranted) {
//       return const Text('Enabled', style: TextStyle(color: Colors.white));
//     }
//     return Text(l10n.allowNotifications);
//   }
// }

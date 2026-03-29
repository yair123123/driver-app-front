// import 'package:flutter/material.dart';
// import 'package:news_app/features/permission/services/notification_permission_service.dart';
// import 'package:news_app/core/widget/warning_card.dart';
// import 'package:news_app/l10n/app_localizations.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class PermissionStatusBanner extends StatelessWidget {
//   const PermissionStatusBanner({
//     super.key,
//     required this.status,
//     required this.onTryAgain,
//   });

//   final NotificationAuth? status;
//   final Future<void> Function() onTryAgain;

//   @override
//   Widget build(BuildContext context) {
//     final l10n = AppLocalizations.of(context)!;

//     if (status == NotificationAuth.notRequested) {
//       return Padding(
//         padding: const EdgeInsets.only(bottom: 12),
//         child: _buildInfoCard(context, l10n),
//       );
//     }

//     if (status == NotificationAuth.denied ||
//         status == NotificationAuth.permanentlyDenied) {
//       return Padding(
//         padding: const EdgeInsets.only(bottom: 12),
//         child: WarningCard(
//           message: l10n.noPermissions,
//           tryAgain: onTryAgain,
//         ),
//       );
//     }

//     return const SizedBox.shrink();
//   }

//   Widget _buildInfoCard(BuildContext context, AppLocalizations l10n) {
//     return Container(
//       padding: EdgeInsets.all(12.w),
//       decoration: BoxDecoration(
//         color: Colors.blue.withAlpha((0.06 * 255).round()),
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//           color: Colors.blue.withAlpha((0.15 * 255).round()),
//           width: 1.w,
//         ),
//       ),
//       child: Row(
//         children: [
//           Icon(
//             Icons.notifications_none_rounded,
//             color: Colors.blue.shade300,
//             size: 22,
//           ),
//           SizedBox(width: 12.w),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   l10n.enableNotifications,
//                   style: AppTextStyles.body.copyWith(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: 2.h),
//                 Text(
//                   l10n.stayUpdatedWithLatestNews,
//                   style: AppTextStyles.caption.copyWith(
//                     color: Colors.white.withOpacity(0.7),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(width: 8.w),
//           TextButton(
//             onPressed: () => onTryAgain(),
//             style: TextButton.styleFrom(
//               padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//                 side: BorderSide(
//                   color: Colors.blue.withAlpha((0.3 * 255).round()),
//                   width: 1,
//                 ),
//               ),
//             ),
//             child: Text(
//               l10n.enable,
//               style: AppTextStyles.body.copyWith(
//                 color: Colors.blue.shade300,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
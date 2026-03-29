import 'package:flutter/material.dart';
import 'package:news_app/core/extensions/context_extention.dart';
import 'package:news_app/l10n/app_localizations.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PermissionStatusCard extends StatelessWidget {
    final PermissionStatus? s;
    final void Function(PermissionStatus?) requestAgain;
  @override
  const PermissionStatusCard({super.key,this.s,required this.requestAgain});
 
 
  @override
 Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h),
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.orange.withAlpha((0.1*255).round()),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.orange.withAlpha((0.3*255).round()), width: 1.w),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withAlpha((0.1*255).round()),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: Colors.orange.withAlpha((0.2*255).round()),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.warning_amber_rounded,
                  color: Colors.orange,
                  size: 24,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Text(
                  AppLocalizations.of(context)!.noPermissions,
                  style: context.textStyles.bodyLarge
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () => requestAgain(s),
              icon: const Icon(Icons.refresh, size: 20),
              label: Text(AppLocalizations.of(context)!.try_again),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
 }
import 'package:driver_app/core/extensions/context_extention.dart';
import 'package:driver_app/features/auth/presentation/widgets/id_field.dart';
import 'package:driver_app/features/auth/presentation/widgets/login_button.dart';
import 'package:driver_app/features/auth/presentation/widgets/username_filed.dart';
import 'package:flutter/material.dart';

import '../../../../theme/app_colors.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController userNameController;
  final TextEditingController idController;
  final void Function(String, String) onLoginPressed;
  final bool isLoading;
  final String? errorMessage;

  const LoginForm({
    super.key,
    required this.userNameController,
    required this.idController,
    required this.onLoginPressed,
    required this.isLoading,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "התחברות לדרייבר 10",
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            UsernameField(controller: userNameController),
            const SizedBox(height: 16),
            IdField(controller: idController),
            const SizedBox(height: 24),
            isLoading
                ? const CircularProgressIndicator()
                : LoginButton(
                  onPressed:
                      () => onLoginPressed(
                        userNameController.text,
                        idController.text,
                      ),
                ),
            const SizedBox(height: 16),
            if (errorMessage != null)
              Text(
                errorMessage ?? '',
                style: context.textStyles.bodySmall?.apply(
                  color: AppColors.error,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

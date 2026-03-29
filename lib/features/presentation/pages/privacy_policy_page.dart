import 'package:flutter/material.dart';
import 'package:news_app/l10n/app_localizations.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Center(
      child: Text(
        l10n.privacyPolicy,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}

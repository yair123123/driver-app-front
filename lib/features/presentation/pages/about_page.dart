import 'package:flutter/material.dart';
import 'package:news_app/l10n/app_localizations.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Center(
      child: Text(
        l10n.about,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}

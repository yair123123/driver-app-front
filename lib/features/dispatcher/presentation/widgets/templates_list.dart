import 'package:flutter/material.dart';

class TemplatesList extends StatelessWidget {
  final List<String> templates;
  final void Function(String? template) onPressed;

  const TemplatesList({
    super.key,
    required this.templates,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final actions = <Widget>[
      ActionChip(
        label: const Text('דלג'),
        onPressed: () => onPressed(null),
      ),
      for (final template in templates)
        ActionChip(
          label: Text(template),
          onPressed: () => onPressed(template),
        ),
    ];

    return Card(
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Wrap(spacing: 8, runSpacing: 8, children: actions),
          ),
        ),
      ),
    );
  }
}
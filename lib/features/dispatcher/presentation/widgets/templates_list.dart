import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/features/dispatcher/presentation/providers/dispatch_provider.dart';

class TemplatesList extends ConsumerWidget {
  final void Function(String template) onPressed;

  const TemplatesList({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final templates = ref.watch(
      logicScreenNotifierProvider.select((s) => s.template),
    );

    return Card(
      child: SizedBox(
        width: double.infinity, 
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 100, 
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: templates
                  .map(
                    (template) => ActionChip(
                      label: Text(template),
                      onPressed: () => onPressed(template),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

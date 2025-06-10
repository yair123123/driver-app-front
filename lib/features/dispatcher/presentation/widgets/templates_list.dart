import 'package:driver_app/features/dispatcher/presentation/providers/dispatch_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TemplatesList extends ConsumerWidget {
  final void Function(String template) onPressed;

  const TemplatesList({required this.onPressed});

  @override 
  Widget build(BuildContext context,WidgetRef ref) {
    final templates = ref.watch(logicScreenNotifierProvider.select((s) => s.template));
    return Card(
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children:
            templates.map((template) {
              return ActionChip(label: Text(template), onPressed:() => onPressed(template));
            }).toList(),
      ),
    );
  }
}

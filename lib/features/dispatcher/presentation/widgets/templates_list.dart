import 'package:flutter/material.dart';

class TemplatesList extends StatelessWidget {
  final List<String> templates;
  final TextEditingController controller;
  final dynamic notifier;

  const TemplatesList({
    required this.templates,
    required this.controller,
    required this.notifier,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: templates.map((template) {
          return ActionChip(
            label: Text(template),
            onPressed: () {
              notifier.selectTemplate(template);
              controller.text =
                  notifier.state.rideDetails; 
              controller.text += '\n';
              controller.selection = TextSelection.fromPosition(
                TextPosition(offset: controller.text.length),
              );
              notifier.onChange(controller);
            },
          );
        }).toList(),
      ),
    );
  }
}

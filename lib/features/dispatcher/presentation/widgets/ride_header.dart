import 'package:driver_app/features/dispatcher/presentation/providers/dispatch_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/states/logic_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Header extends ConsumerWidget {
  final Map<FormStep, String> fieldNames = {
    FormStep.originCity: "מוצא עיר",
    FormStep.originNeighborhood: "מוצא שכונה",
    FormStep.destinationCity: "יעד עיר",
    FormStep.destinationNeighborhood: "יעד שכונה",
    FormStep.price: "מחיר",
    FormStep.phone: "טלפון",
    FormStep.comment: "פרטים נוספים",
  };
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final currentField =  fieldNames[ref.watch(logicScreenNotifierProvider.select((s)=> s.step))];
    
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.deepPurple),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        'אתה ממלא עכשיו: $currentField',
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

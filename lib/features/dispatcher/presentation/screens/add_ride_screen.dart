import 'package:driver_app/core/providers/dispatch_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/providers/dispatch_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddRideScreen extends ConsumerStatefulWidget {
  const AddRideScreen({super.key});

  @override
  _AddRideScrean createState() => _AddRideScrean();
}

class _AddRideScrean extends ConsumerState<AddRideScreen> {
  final TextEditingController controller = TextEditingController();
  final List<String> fieldNames = [
    "מוצא",
    "יעד",
    "מחיר",
    "טלפון",
    "פרטים נוספים",
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dispatchState = ref.watch(dispatchNotifierProvider);
final currentIndex = dispatchState.indexCurrentLine;
final currentField = fieldNames[currentIndex ?? 0];
final notifier = ref.read(dispatchNotifierProvider.notifier);
return ref.watch(initialScreenProvider).when(
  data: (initialScreenState) {
    return Scaffold(
      appBar: AppBar(title: Text("פרסום נסיעה")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
            ),
            const SizedBox(height: 16),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: "פרטי נסיעה",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 8,
              onChanged: (value) {
                notifier.onChange(controller);
              },
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                'כאן נוסיף תבניות מוכנות בהמשך 🚀',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: notifier.addRide,
              child: const Text('פרסם נסיעה'),
            ),
            if (dispatchState.errorMessage != "")
              Text(dispatchState.errorMessage),
          ],
        ),
      ),
    );
  },
  error: (error,stackTrace) => ScaffoldMessenger(child: Text('$error')) ,
  loading: () => const Center(child: Cirv,),
);
}

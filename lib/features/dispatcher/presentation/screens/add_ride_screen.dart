import 'package:driver_app/features/dispatcher/presentation/widgets/error_message.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/ride_details_field.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/ride_header.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/templates_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/features/dispatcher/presentation/providers/dispatch_provider.dart';

class AddRideScreen extends ConsumerStatefulWidget {
  const AddRideScreen({super.key});

  @override
  _AddRideScreenState createState() => _AddRideScreenState();
}

class _AddRideScreenState extends ConsumerState<AddRideScreen> {
  final TextEditingController controller = TextEditingController();
  final List<String> fieldNames = [
    "מוצא עיר",
    "מוצא שכונה",
    "יעד עיר",
    "יעד שכונה",
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
    return ref
        .watch(initialScreenProvider)
        .when(
          data: (_) {
            final dispatchState = ref.watch(dispatchNotifierProvider);
            final currentIndex = dispatchState.indexCurrentLine;
            final currentField = fieldNames[currentIndex];
            final notifier = ref.read(dispatchNotifierProvider.notifier);
            final templates = dispatchState.getTemplates();

            return Scaffold(
              appBar: AppBar(title: const Text("פרסום נסיעה")),
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(currentField: currentField),
                    const SizedBox(height: 16),
                    RideDetailsField(
                      controller: controller,
                      notifier: notifier,
                    ),
                    const SizedBox(height: 16),
                    TemplatesList(
                      templates: templates,
                      controller: controller,
                      notifier: notifier,
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: ElevatedButton(
                        onPressed: notifier.addRide,
                        child: const Text('פרסם נסיעה'),
                      ),
                    ),
                    if (dispatchState.errorMessage.isNotEmpty)
                      ErrorMessage(message: dispatchState.errorMessage),
                  ],
                ),
              ),
            );
          },
          error:
              (error, stack) =>
                  Scaffold(body: Center(child: Text('Error: $error'))),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
  }
}

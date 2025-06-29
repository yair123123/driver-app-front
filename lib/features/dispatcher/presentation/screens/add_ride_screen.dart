import 'package:driver_app/core/widgets/error_message.dart';
import 'package:driver_app/features/bootstrap/domain/entities/station/station.dart';
import 'package:driver_app/features/dispatcher/presentation/states/form_dispatch_state.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/ride_details_field.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/ride_header.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/templates_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/features/dispatcher/presentation/providers/dispatch_provider.dart';
import 'package:go_router/go_router.dart';

class AddRideScreen extends ConsumerStatefulWidget {
  const AddRideScreen({super.key});

  @override
  _AddRideScreenState createState() => _AddRideScreenState();
}

class _AddRideScreenState extends ConsumerState<AddRideScreen> {
  final TextEditingController controller = TextEditingController();
  void onChangeStation(Station? station) {
    ref.read(dispatchNotifierProvider.notifier).onChangeStation(station!);
  }

  void onPressTemplate(String template) {
    ref
        .read(logicScreenNotifierProvider.notifier)
        .onPressTemplate(template, controller);
  }

  void onChange() {
    ref.read(logicScreenNotifierProvider.notifier).onChange(controller);
  }

  void clearForm() {
    controller.clear();
    ref.read(dispatchNotifierProvider.notifier).resetForm();
    ref.read(logicScreenNotifierProvider.notifier).resetLogic();
  }

  @override
  void initState() {
    controller.addListener(onChange);
    super.initState();
  }

  @override
  void dispose() {
    controller.removeListener(onChange);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<DispatchState>(dispatchNotifierProvider, (prev, next) {
      if (next.isSending && (prev == null || !prev.isSending)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("נסיעה נשלחה בהצלחה"),
            action: SnackBarAction(
              label: "עבור לסטטוס נסיעה",
              onPressed: () => context.go('/dispatcher/summary'),
            ),
          ),
        );
        clearForm();
      }
    });
    final formState = ref.watch(dispatchNotifierProvider);
    return ref
        .watch(initialScreenProvider)
        .when(
          data: (provider) {
            final state = ref.read(dispatchNotifierProvider);
            return Scaffold(
              appBar: AppBar(
                title: const Text("פרסום נסיעה"),
                actions: [
                  ElevatedButton(onPressed: clearForm, child: Text("נקה טופס")),
                ],
              ),

              body: Stack(
                children: [
                  SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownButton(
                          items:
                              provider.stations
                                  .map(
                                    (s) => DropdownMenuItem(
                                      value: s,
                                      child: Text(s.station_name),
                                    ),
                                  )
                                  .toList(),
                          value: state.station,
                          onChanged: onChangeStation,
                        ),
                        Header(),
                        const SizedBox(height: 16),
                        RideDetailsField(controller: controller),
                        const SizedBox(height: 16),
                        TemplatesList(onPressed: onPressTemplate),
                        const SizedBox(height: 16),
                        Center(
                          child: ElevatedButton(
                            onPressed:
                                formState.isLoading
                                    ? null
                                    : () => ref
                                        .read(dispatchNotifierProvider.notifier)
                                        .addRide(controller.text),
                            child: const Text('פרסם נסיעה'),
                          ),
                        ),
                        if (formState.errorMessage.isNotEmpty)
                          ErrorMessage(message: formState.errorMessage),
                      ],
                    ),
                  ),
                  if (formState.isLoading)
                    Container(
                      color: Colors.black.withValues(alpha: 0.5),
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                ],
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

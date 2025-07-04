import 'package:driver_app/core/app/app_state_notifier.dart';
import 'package:driver_app/core/widgets/error_message.dart';
import 'package:driver_app/features/bootstrap/domain/entities/station/station.dart';
import 'package:driver_app/features/dispatcher/presentation/states/form_dispatch_state.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/ride_details_field.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/ride_header.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/templates_list.dart';
import 'package:driver_app/widgets/custom_snackbar.dart';
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
 Station? station;




  void onChangeStation(Station? s) {
    if (s == null) return;
    station = s;
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
    ref.read(formDispatchNotifierProvider.notifier);
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
    ref.listen<AsyncValue<DispatchState>>(formDispatchNotifierProvider, (
      _,
      next,
    ) {
      next.whenOrNull(
        data: (data) {
          if (data.sent) {
            controller.clear();
            showCustomSnackBar(context, "נסיעה נשלחה בהצלחה", isError: false);
          }
          if (data.error != null) {
            showCustomSnackBar(context, data.error!, isError: true);
          }
        },
        error: (e, s) {
          print(e);
          showCustomSnackBar(
            context,
            "שגיאה נא לבדוק חיבור אינטרנט",
            isError: true,
          );
        },
      );
    });
    final stations =
        ref.watch(appStateNotifierProvider).user!.dispatcher_stations;
    return ref
        .watch(formDispatchNotifierProvider)
        .when(
          data: (state) {
            final Station defoultStation = stations.firstWhere(
              (s) => s.station_id == state.defoultStationId,
              orElse: () => stations.first,
            );
            station ??= defoultStation;
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
                              stations
                                  .map(
                                    (s) => DropdownMenuItem(
                                      value: s,
                                      child: Text(s.station_name),
                                    ),
                                  )
                                  .toList(),
                          value: defoultStation,
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
                                () => ref
                                    .read(formDispatchNotifierProvider.notifier)
                                    .addRide(controller.text, station!),
                            child: const Text('פרסם נסיעה'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          error: (error, stack) => ErrorMessage(message: error.toString()),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
  }
}

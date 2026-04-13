import 'package:driver_app/core/widget/asynv_body_helper.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/smart_form.dart';
import 'package:driver_app/features/dispatcher/presentation/widgets/station_selected_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/dispatch_provider.dart';

class AddRideScreen extends ConsumerWidget {
  const AddRideScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(formDispatchNotifierProvider.notifier);

    ref.listen(formDispatchNotifierProvider, (_, next) {
      next.whenData((value) {
        if (value.sent) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('הנסיעה פורסמה בהצלחה')));
          notifier.resetTransientState();
        }

        if (value.errorMessage != null && value.errorMessage!.isNotEmpty) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(value.errorMessage!)));
        }
      });
    });
    final formStateAsync = ref.watch(formDispatchNotifierProvider);

    return AsyncBody(
      value: formStateAsync,
      builder: (state) {
        return Scaffold(
          appBar: AppBar(title: const Text('פרסום נסיעה')),
          body: SafeArea(
            child: Column(
              children: [
                StationSelectionCard(
                  stations: state.stations,
                  selectedStation: state.selectedStation,
                  isInternal: state.isInternal,
                  onStationChanged: notifier.onChangeStation,
                  onInternalChanged: notifier.onInternalChanged,
                ),
                Expanded(
                  child: SmartForm(
                    isInternal: state.isInternal,
                    isSubmitting: state.isSubmitting,
                    onSubmit: notifier.submit,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

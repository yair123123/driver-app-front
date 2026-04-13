import 'package:driver_app/features/dispatcher/presentation/notifiers/summary_dispatches_notifier.dart';
import 'package:driver_app/features/dispatcher/presentation/states/summary_dispatch_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dispatch_dependencies_providers.dart';

final summaryRidesProvider = StateNotifierProvider<
    SummaryDispatchesNotifier,
    List<SummaryDispatchState>
>((ref) {
  return SummaryDispatchesNotifier(ref.watch(getEventActiveRideUsecaseProvider));
});
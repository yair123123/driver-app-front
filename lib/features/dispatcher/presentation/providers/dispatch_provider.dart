import 'package:driver_app/features/dispatcher/presentation/notifiers/form_dispatch_notifier.dart';
import 'package:driver_app/features/dispatcher/presentation/notifiers/logic_screen_notifier.dart';
import 'package:driver_app/features/dispatcher/presentation/states/logic_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../states/form_dispatch_state.dart';

final formDispatchNotifierProvider =
AsyncNotifierProvider<FormDispatchNotifier, DispatchFormState>(
  FormDispatchNotifier.new,
);

final logicScreenNotifierProvider =
StateNotifierProvider<LogicScreenNotifier, LogicScreenState>(
      (_) => LogicScreenNotifier(),
);
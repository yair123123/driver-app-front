import 'package:driver_app/features/rides/presentation/notifiers/active_ride_notifier.dart';
import 'package:driver_app/features/rides/presentation/states/ative_ride_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final activeRideProvider =
    AsyncNotifierProvider<RideActiveNotifier, ActiveRideState?>(RideActiveNotifier.new);

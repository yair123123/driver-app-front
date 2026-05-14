import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:driver_app/features/rides/presentation/controllers/rides_controller.dart';
import 'package:driver_app/features/rides/presentation/states/rides_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ridesControllerProvider =
    AsyncNotifierProvider<RidesController, RidesState>(RidesController.new);



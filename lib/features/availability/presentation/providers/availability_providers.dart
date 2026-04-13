import 'package:driver_app/features/availability/presentation/controllers/driver_availability_controller.dart';
import 'package:driver_app/features/availability/presentation/states/driver_availability_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final driverAvailabilityControllerProvider =
    NotifierProvider<DriverAvailabilityController, DriverAvailabilityState>(
      DriverAvailabilityController.new,
    );

import 'package:driver_app/features/dispatch_realtime/domain/entities/dispatch_connection_state.dart';
import 'package:driver_app/features/dispatch_realtime/presentation/controllers/dispatch_connection_controller.dart';
import 'package:driver_app/features/dispatch_realtime/presentation/controllers/incoming_ride_offers_controller.dart';
import 'package:driver_app/features/rides/domain/entities/ride/ride.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

export 'dispatch_realtime_dependencies.dart';

final dispatchConnectionControllerProvider =
    NotifierProvider<DispatchConnectionController, DispatchConnectionState>(
      DispatchConnectionController.new,
    );

final incomingRideOffersProvider =
    NotifierProvider<IncomingRideOffersController, List<Ride>>(
      IncomingRideOffersController.new,
    );

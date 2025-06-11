import 'package:driver_app/features/rides/presentation/providers/rides_list_provider.dart';
import 'package:driver_app/widgets/vip_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class StationsListScreen extends ConsumerWidget {
  const StationsListScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final stations = ref.watch(rideNotifierProvider);

        return 
       ListView.builder(
        itemCount: stations.length,
        restorationId: 'stations_list_view',

        prototypeItem: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          title: Text("exapmle"),
          subtitle: Text("biggest componnet "),
        ),
        itemBuilder: (context, index) {
          final station = stations[index];
          final bool isVip = true;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Stack(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  title: Text(station.station.station_name),
                    subtitle: Text(
                    station.rides.isNotEmpty ? (station.rides[0].comments) : '',
                    ),
                  onTap: () {
                    context.go(
                      '/rides/list/station',
                      extra: station,
                    );
                  },
                ),

                if (isVip) const VipTag(),
              ],
            ),
          );
        },
       );}}
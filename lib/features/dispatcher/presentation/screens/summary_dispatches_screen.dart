import 'package:driver_app/features/dispatcher/presentation/providers/summary_dispatches_provider.dart';
import 'package:driver_app/features/dispatcher/presentation/states/summary_dispatch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SummaryDispatchesScreen extends ConsumerWidget {
  const SummaryDispatchesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<SummaryDispatchState> rides = ref.watch(summaryRidesProvider);
    print(rides);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(label: Text("מזהה נסיעה")),
            DataColumn(label: Text("מוצא")),
            DataColumn(label: Text("יעד")),
            DataColumn(label: Text("סטטוס נסיעה")),
            DataColumn(label: Text("נהג")),
            DataColumn(label: Text("צאט עם נהג")),
          ],
          rows:
              rides
                  .map(
                    (r) => DataRow(
                      cells: [
                        DataCell(Text(r.id)),
                        DataCell(Text(r.origin)),
                        DataCell(Text(r.destination)),
                        DataCell(Text(r.status.name)),
                        DataCell(Text(r.driverName ?? " ")),
                        DataCell(
                          r.driverName != null
                              ? TextButton(
                                child: Text("עבור לצאט"),
                                onPressed: () => context.go('chats/driverId'),
                              )
                              : Text(""),
                        ),
                      ],
                    ),
                  )
                  .toList(),
        ),
      ),
    );
  }
}

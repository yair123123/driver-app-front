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

    return Scaffold(
      appBar: AppBar(title: const Text("סיכום נסיעות")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 20,
              headingRowColor: WidgetStateProperty.all(Colors.grey[200]),
              columns: const [
                DataColumn(label: Text("מזהה נסיעה")),
                DataColumn(label: Text("מוצא")),
                DataColumn(label: Text("יעד")),
                DataColumn(label: Text("סטטוס נסיעה")),
                DataColumn(label: Text("נהג")),
                DataColumn(label: Text("צ'אט עם נהג")),
              ],
              rows:
                  rides.map((r) {
                    return DataRow(
                      cells: [
                        DataCell(Text(r.id.substring(0, 6))), // קיצור מזהה
                        DataCell(
                          Text(r.origin, overflow: TextOverflow.ellipsis),
                        ),
                        DataCell(
                          Text(r.destination, overflow: TextOverflow.ellipsis),
                        ),
                        DataCell(Text(r.status.name)),
                        DataCell(Text(r.driverName ?? "לא שובץ")),
                        DataCell(
                          r.driverName != null
                              ? ElevatedButton.icon(
                                onPressed:
                                    () => context.go('/chats/${r.driverName}'),
                                icon: const Icon(Icons.chat_bubble_outline),
                                label: const Text("צ'אט"),
                              )
                              : const Text("-"),
                        ),
                      ],
                    );
                  }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

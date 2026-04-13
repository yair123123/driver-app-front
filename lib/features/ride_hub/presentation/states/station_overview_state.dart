import '../../../stations/domain/entities/station.dart';

class StationOverviewItem {
  int stationId;

  String stationName;

  int ridesCount;

  String? lastComment;

  StationOverviewItem({
    required this.stationId,
    required this.stationName,
    required this.ridesCount,
    this.lastComment,
  });
}

class StationOverviewState {
  List<StationOverviewItem> items;

  StationOverviewState(this.items);
}

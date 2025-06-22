import 'package:driver_app/core/enums/websocket_typecode.dart';
import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/dispatcher/domain/entities/initail_screen.dart';
import 'package:driver_app/features/rides/domain/entities/ride_message_dto.dart';
import 'package:driver_app/utils/json_util.dart';

class DispatcherDatasource {
  WebSocketService webSocketService;
  DispatcherDatasource(this.webSocketService);

  Future<InitialScreen> initialScreen() async {
    try {
      List<String> cities = await loadJsonList("assets/cities.json");
      Map<String, List<String>> neighborhoods = await loadJsonMap(
        "assets/neighborhoods.json",
        (value) => List<String>.from(value),
      );
      Map<String, List<int>> prices = await loadJsonMap<List<int>>(
        "assets/prices.json",
        (value) => List<int>.from(value.map((e) => int.parse(e.toString()))),
      );
      return InitialScreen(cities, neighborhoods, prices);
    } catch (e) {
      print("catch error $e");
      return InitialScreen([], {}, {});
    }
  }

  void sendRideAction(RideMessageDto ride) {
    webSocketService.send(
      WebSocketDto(content: ride, typeCode: WebSocketTypeCode.rides, error: ""),
    );
  }

  Stream<RideMessageDto> getRidesEvents() {
    return webSocketService.webSocketDtoStream
        .where((event) => event.typeCode == WebSocketTypeCode.rides)
        .map((event) => RideMessageDto.fromJson(event.content));
  }
}

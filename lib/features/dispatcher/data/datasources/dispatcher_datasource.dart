import 'package:driver_app/core/websocket/websocket_dto.dart';
import 'package:driver_app/core/websocket/websocket_service.dart';
import 'package:driver_app/features/dispatcher/domain/entities/initail_screen.dart';
import 'package:driver_app/features/rides/domain/entities/ride_dto.dart';
import 'package:driver_app/utils/json_util.dart';

class DispatcherDatasource {
  WebSocketService webSocketService;
  DispatcherDatasource(this.webSocketService);

  Future<InitialScreen> initialScreen() async {
    List<String> cities = await loadJsonList("cities.json") ;
    Map<String,List<String> >neighborhoods = await loadJsonMap("neighborhoods.json",(value) => List<String>.from(value)) ;
    Map<String,int> prices = await loadJsonMap<int>("prices.json", (value) => int.parse(value.toString())); ;
    return InitialScreen(cities, neighborhoods, prices);
  }
  void sendRideAction(RideDto ride){
    webSocketService.send(WebSocketDto(content: ride, typeCode: 10));
  }

}
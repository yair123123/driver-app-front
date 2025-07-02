import 'package:driver_app/features/dispatcher/domain/entities/initial_screen.dart';
import 'package:driver_app/features/dispatcher/domain/entities/location/city.dart';
import 'package:driver_app/utils/json_util.dart';

class LocalDatasource {
  
  Future<InitialScreen> initialScreenLocaly() async {
    List<Map<String, dynamic>> cities = await loadJsonList("cities.json");
    final cityEntites = cities.map((e) => City.fromJson(e)).toList();

    Map<String, List<int>> prices = await loadJsonMap<List<int>>(
      "prices.json",
      (value) => List<int>.from(value.map((e) => int.parse(e.toString()))),
    );
    List<String> comments = await loadStringList("comments.json");
    return InitialScreen(
      cities: cityEntites,
      prices: prices,
      comments: comments,
    );
  }


}
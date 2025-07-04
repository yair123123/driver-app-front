import 'dart:convert';

import 'package:driver_app/features/dispatcher/domain/entities/initial_screen.dart';
import 'package:driver_app/features/dispatcher/domain/entities/location/dispatch_data.dart';
import 'package:http/http.dart' as http;

class HttpDatasource {
  final String url;
  HttpDatasource(this.url);
  Future<InitialScreen> initialScreenByApi() async {
    final response = await http.get(Uri.http(url, '/api/general/get-data'));
    if (response.statusCode != 200) {
      throw Exception('Failed to load initial screen data');
    }

    final data = DispatchData.fromJson(jsonDecode(response.body));
    return InitialScreen(
      cities: data.cities,
      prices: data.prices,
      comments: data.comments,
    );
  }
}

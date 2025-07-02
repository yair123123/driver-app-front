import 'dart:convert';

import 'package:driver_app/features/dispatcher/domain/entities/initial_screen.dart';
import 'package:driver_app/features/dispatcher/domain/entities/location/city.dart';
import 'package:http/http.dart' as http;

class HttpDatasource {
  final String url;
  HttpDatasource(this.url);
  Future<InitialScreen> initialScreenByApi() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode != 200) {
      throw Exception('Failed to load initial screen data');
    }
    final data= jsonDecode(response.body) as Map<String, dynamic>;
    
    return InitialScreen(
      cities: data['cities']?.map((e) => City.fromJson(e)).toList() ?? [],
      prices: data['prices'],
      comments: List<String>.from(data['comments'] ?? []),
    );
    // TODO: Parse response and return InitialScreen instance
    throw UnimplementedError();
  }
}

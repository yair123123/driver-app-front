import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<List<String>> loadJsonList(String path) async {
  final String data = await rootBundle.loadString(path);
  return List<String>.from(json.decode(data));
}

Future<Map<String, dynamic>> loadJsonMap(String path) async {
  final String data = await rootBundle.loadString(path);
  final map = json.decode(data) as Map<String, dynamic>;
  return map.map((key, value) => MapEntry(key, List<String>.from(value)));
}

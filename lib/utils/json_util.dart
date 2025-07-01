import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<List<Map<String, dynamic>>> loadJsonList(String path) async {
  final String data = await rootBundle.loadString(path);
  return List<Map<String, dynamic>>.from(json.decode(data));
}

Future<Map<String, T>> loadJsonMap<T>(
  String path,
  T Function(dynamic json) fromJson,
) async {
  final String data = await rootBundle.loadString(path);
  print("data is $data");
  final map = json.decode(data) as Map<String, dynamic>;
  return map.map((key, value) => MapEntry(key, fromJson(value)));
}

Future<List<String>> loadStringList(String path) async {
  final String data = await rootBundle.loadString(path);
  return List<String>.from(json.decode(data));
}

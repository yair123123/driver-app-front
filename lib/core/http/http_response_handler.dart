import 'dart:convert';
import 'package:driver_app/core/http/http_dto.dart';
import 'package:http/http.dart' as http;

Future<T> responseHandler<T>(
  http.Response response,
  T Function(Object?) fromJsonT,
) { 
  final data = json.decode(response.body);

  switch (response.statusCode) {
    case 200:
    case 201:
      HttpDto<T> res = HttpDto<T>.fromJson(data, fromJsonT);
      return Future.value(res.content);
    case 400:
      return Future.error(data["error"] ?? "בעיה בשליחת המידע אנא פנה לשירות לקוחות");
    case 401:
      return Future.error(data["error"] ?? "משתמש לא מורשה");
    default:
      return Future.error("שגיאה כללית בשרת (${response.statusCode})");
  }
}
 
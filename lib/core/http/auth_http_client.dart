import 'package:http/http.dart' as http;

class AuthHttpClient extends http.BaseClient {
  final http.Client _inner;
  final  Future<String?> Function() _getAccessToken;

  AuthHttpClient(this._inner, this._getAccessToken);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final token = await _getAccessToken();
    if (token != null && token.isNotEmpty) {
      request.headers['Authorization'] = 'Bearer $token';
    }
    request.headers['Accept-Encoding'] = 'gzip';
    return _inner.send(request);
  }
}

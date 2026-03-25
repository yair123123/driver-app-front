import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/core/env/config_service.dart';
import 'package:news_app/core/error/failure.dart';

class ApiClient {
  final String baseUrl;
  final http.Client httpClient;

  ApiClient({required this.baseUrl, http.Client? client})
    : httpClient = client ?? http.Client();

  Future<Either<Failure, T>> _request<T>(
    Future<http.Response> Function() call, {
    required T Function(dynamic json)? fromJson,
  }) async {
    try {
      final response = await call().timeout(const Duration(seconds: 20));
      return   _handleResponse<T>(response, fromJson);
    } on SocketException {
      return const Left(NoInternetFailure());
    } on TimeoutException {
      return const Left(TimeoutFailure());
    } on FormatException catch (e) {
      return Left(ParsingFailure(e.toString()));
    } on TypeError catch (e) {
      return Left(ParsingFailure(e.toString()));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  Future<Either<Failure, T>> get<T>(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParams,
    required T Function(dynamic json)? fromJson,
  }) async {
    final uri = Uri.https(
      baseUrl,
      path,
      queryParams?.map((k, v) => MapEntry(k, v.toString())),
    );

    return _request(
      () => httpClient.get(uri, headers: headers),
      fromJson: fromJson,
    );
  }

  Future<Either<Failure, T>> post<T>(
    String path, {
    Map<String, String>? headers,
    Object? body,
    required T Function(dynamic json)? fromJson,
  }) async {
    final uri = Uri.https(baseUrl, path);

    return _request(
      () => httpClient.post(
        uri,
        headers: {'Content-Type': 'application/json', ...?headers},
        body: body != null ? jsonEncode(body) : null,
      ),
      fromJson: fromJson,
    );
  }

  Future<Either<Failure, T>> put<T>(
    String path, {
    Map<String, String>? headers,
    Object? body,
    required T Function(dynamic json)? fromJson,
  }) async {
    final uri = Uri.https(baseUrl, path);

    return _request(
      () => httpClient.put(
        uri,
        headers: {'Content-Type': 'application/json', ...?headers},
        body: body != null ? jsonEncode(body) : null,
      ),
      fromJson: fromJson,
    );
  }

  Future<Either<Failure, T>> patch<T>(
    String path, {
    Map<String, String>? headers,
    Object? body,
    required T Function(dynamic json)? fromJson,
  }) async {
    final uri = Uri.https(baseUrl, path);

    return _request(
      () => httpClient.patch(
        uri,
        headers: {'Content-Type': 'application/json', ...?headers},
        body: body != null ? jsonEncode(body) : null,
      ),
      fromJson: fromJson,
    );
  }

  Either<Failure, T> _handleResponse<T>(
    http.Response response,
    T Function(dynamic json)? fromJson,
  ) {
    final isSuccessStatus =
        response.statusCode >= 200 && response.statusCode < 300;

    dynamic decoded;

    if (isSuccessStatus) {
      try {
        decoded = jsonDecode(response.body);
      } on FormatException catch (e) {
        return Left(ParsingFailure('Failed to decode JSON: $e'));
      }
    } else {
      try {
        decoded = jsonDecode(response.body);
      } on FormatException {
        decoded = null;
      }
    }

    if (isSuccessStatus && decoded is Map && decoded['ok'] == true) {
      final data = decoded['data'];

      try {
        if (fromJson != null) {
          return Right(fromJson(data));
        } else {
          return Right(data as T);
        }
      } on TypeError catch (e) {
        return Left(ParsingFailure('Failed to parse response to $T: $e'));
      }
    }

    Map errorMap = {};
    if (decoded is Map) {
      errorMap = decoded;
    }

    final error = errorMap['error'];
    final message = (error is Map && error['message'] != null)
        ? error['message'].toString()
        : (response.reasonPhrase ?? 'HTTP ${response.statusCode} error');

    switch (response.statusCode) {
      case 400:
        return Left(BadRequestFailure(message));
      case 304:
        return Left(NotModified(message));
      case 401:
        return Left(UnauthorizedFailure(message));
      case 403:
        return Left(ForbiddenFailure(message));
      case 404:
        return Left(NotFoundFailure(message));
      case 409:
        return Left(ConflictFailure(message));
      case 422:
        return Left(ServerValidationFailure(message));
      case 503:
        return Left(ServerNotReadyFailure(message));
      case 500:
      case 501:
      case 502:
        return Left(ServerFailure(message));
      default:
        return Left(ServerFailure(message));
    }
  }
}

final apiClientProvider = Provider<ApiClient>((ref) {
  final baseUrl = ref.read(appConfigProvider).publicApiUrl;
  Future<String?> tokenGetter() async => ref.read(credsProvider)?.accessToken;
  final authClient = AuthHttpClient(http.Client(), tokenGetter);

  return ApiClient(baseUrl: baseUrl, client: authClient);
});

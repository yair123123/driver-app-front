import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:driver_app/core/env/config_service.dart';
import 'package:driver_app/core/error/failure.dart';
import 'package:driver_app/core/http/auth_http_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;

import '../../features/auth/presentation/notifiers/creds_notifier.dart';

class ApiClient {
  final String baseUrl;
  final http.Client httpClient;

  ApiClient({required this.baseUrl, http.Client? client})
    : httpClient = client ?? http.Client();

  Future<Either<Failure, T>> _request<T>(
    Future<http.Response> Function() call, {
    required T Function(dynamic json)? fromJson,
    bool unwrapData = true,
  }) async {
    try {
      final response = await call().timeout(const Duration(seconds: 20));
      return _handleResponse<T>(response, fromJson);
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
    bool unwrapData = true,
  }) async {
    final uri = Uri.http(
      baseUrl,
      path,
      queryParams?.map((k, v) => MapEntry(k, v.toString())),
    );

    return _request(
      () => httpClient.get(uri, headers: headers),
      fromJson: fromJson,
      unwrapData: unwrapData,
    );
  }

  Future<Either<Failure, T>> post<T>(
    String path, {
    Map<String, String>? headers,
    Object? body,
    required T Function(dynamic json)? fromJson,
    bool unwrapData = true,
  }) async {
    final uri = Uri.http(baseUrl, path);

    return _request(
      () => httpClient.post(
        uri,
        headers: {'Content-Type': 'application/json', ...?headers},
        body: body != null ? jsonEncode(body) : null,
      ),
      fromJson: fromJson,
      unwrapData: unwrapData,
    );
  }

  Future<Either<Failure, T>> put<T>(
    String path, {
    Map<String, String>? headers,
    Object? body,
    required T Function(dynamic json)? fromJson,
    bool unwrapData = true,
  }) async {
    final uri = Uri.https(baseUrl, path);

    return _request(
      () => httpClient.put(
        uri,
        headers: {'Content-Type': 'application/json', ...?headers},
        body: body != null ? jsonEncode(body) : null,
      ),
      fromJson: fromJson,
      unwrapData: unwrapData,
    );
  }

  Future<Either<Failure, T>> patch<T>(
    String path, {
    Map<String, String>? headers,
    Object? body,
    required T Function(dynamic json)? fromJson,
    bool unwrapData = true,
  }) async {
    final uri = Uri.https(baseUrl, path);

    return _request(
      () => httpClient.patch(
        uri,
        headers: {'Content-Type': 'application/json', ...?headers},
        body: body != null ? jsonEncode(body) : null,
      ),
      fromJson: fromJson,
      unwrapData: unwrapData,
    );
  }

  Either<Failure, T> _handleResponse<T>(
    http.Response response,
    T Function(dynamic json)? fromJson,
  ) {
    final isSuccessStatus =
        response.statusCode >= 200 && response.statusCode < 300;

    dynamic decoded;
    try {
      decoded = response.body.isNotEmpty ? jsonDecode(response.body) : null;
    } on FormatException catch (e) {
      return Left(ParsingFailure('Failed to decode JSON: $e'));
    }

    if (isSuccessStatus) {
      try {
        if (fromJson != null) {
          return Right(fromJson(decoded));
        }
        return Right(decoded as T);
      } on TypeError catch (e) {
        return Left(ParsingFailure('Failed to parse response to $T: $e'));
      }
    }

    final message =
        decoded is Map && decoded['message'] != null
            ? decoded['message'].toString()
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
      default:
        return Left(ServerFailure(message));
    }
  }
}

final apiClientProvider = Provider<ApiClient>((ref) {
  final baseUrl = ref.read(appConfigProvider).api.baseUrl;
  Future<String?> tokenGetter() async =>
      ref.read(authSessionProvider)?.accessToken;

  final authClient = AuthHttpClient(http.Client(), tokenGetter);

  return ApiClient(baseUrl: baseUrl, client: authClient);
});

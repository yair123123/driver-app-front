import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final bool reportable;

  const Failure(this.message, {this.reportable = true});

  @override
  List<Object?> get props => [message, reportable];
}

class NoInternetFailure extends Failure {
  const NoInternetFailure()
      : super('No internet connection', reportable: false);
}

class TimeoutFailure extends Failure {
  const TimeoutFailure() : super('Request timed out', reportable: false);
}

class NetworkFailure extends Failure {
  const NetworkFailure([String message = 'Network error'])
      : super(message, reportable: false);
}

class ServerFailure extends Failure {
  const ServerFailure([String message = 'Server error']) : super(message);
}

class DataIsEmpty extends Failure {
  const DataIsEmpty([String message = 'No data available'])
      : super(message, reportable: false);
}

class BadRequestFailure extends Failure {
  const BadRequestFailure([String message = 'Bad request'])
      : super(message, reportable: false);
}

class NotModified extends Failure {
  const NotModified([String message = 'Not modified'])
      : super(message, reportable: false);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure([String message = 'Unauthorized'])
      : super(message, reportable: false);
}

class ForbiddenFailure extends Failure {
  const ForbiddenFailure([String message = 'Forbidden'])
      : super(message, reportable: false);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure([String message = 'Not found'])
      : super(message, reportable: false);
}

class ConflictFailure extends Failure {
  const ConflictFailure([String message = 'Conflict'])
      : super(message, reportable: false);
}

class ServerValidationFailure extends Failure {
  const ServerValidationFailure([String message = 'Validation error'])
      : super(message, reportable: false);
}

class ServerNotReadyFailure extends Failure {
  const ServerNotReadyFailure([String message = 'Server not ready error'])
      : super(message, reportable: false);
}

// ---------------------------------------------------------------------------
// FILE SYSTEM FAILURES
// ---------------------------------------------------------------------------

class WriteFileFailure extends Failure {
  const WriteFileFailure([String message = 'Failed to write file'])
      : super(message);
}

class ReadFileFailure extends Failure {
  const ReadFileFailure([String message = 'Failed to read file'])
      : super(message);
}

class FileNotFoundFailure extends Failure {
  const FileNotFoundFailure([String message = 'File not found'])
      : super(message, reportable: false);
}

class InsufficientStorageFailure extends Failure {
  const InsufficientStorageFailure([String message = 'Insufficient storage'])
      : super(message);
}

class DatabaseReadFailure extends Failure {
  const DatabaseReadFailure([String message = 'Database read error'])
      : super(message);
}

class DatabaseWriteFailure extends Failure {
  const DatabaseWriteFailure([String message = 'Database write error'])
      : super(message);
}

class DatabaseConnectionFailure extends Failure {
  const DatabaseConnectionFailure([
    String message = 'Database connection error',
  ]) : super(message);
}

class AuthFailure extends Failure {
  const AuthFailure([String message = 'Authentication error']) : super(message);
}

class InvalidCredentialsFailure extends Failure {
  const InvalidCredentialsFailure([
    String message = 'Invalid username or password',
  ]) : super(message, reportable: false);
}

class SecureStorageReadFailure extends Failure {
  const SecureStorageReadFailure([
    String message = 'Failed to read from secure storage',
  ]) : super(message);
}

class SecureStorageWriteFailure extends Failure {
  const SecureStorageWriteFailure([
    String message = 'Failed to write to secure storage',
  ]) : super(message);
}

class SecureStorageClearFailure extends Failure {
  const SecureStorageClearFailure([
    String message = 'Failed to clear secure storage',
  ]) : super(message);
}

class TokenExpiredFailure extends Failure {
  const TokenExpiredFailure([String message = 'Token expired'])
      : super(message, reportable: false);
}

class UserNotFoundFailure extends Failure {
  const UserNotFoundFailure([String message = 'User not found'])
      : super(message, reportable: false);
}

class PermissionDeniedFailure extends Failure {
  const PermissionDeniedFailure([String message = 'Permission denied'])
      : super(message, reportable: false);
}

class EmptyResultFailure extends Failure {
  const EmptyResultFailure([String message = 'No results found'])
      : super(message, reportable: false);
}

class InvalidInputFailure extends Failure {
  const InvalidInputFailure([String message = 'Invalid input'])
      : super(message, reportable: false);
}

class ValidationFailure extends Failure {
  const ValidationFailure([String message = 'Validation failed'])
      : super(message, reportable: false);
}

class QueryIsEmpty extends Failure {
  const QueryIsEmpty([String message = 'Query is empty'])
      : super(message, reportable: false);
}

class EmptyTopicsFailure extends Failure {
  const EmptyTopicsFailure([String message = 'Topics is empty'])
      : super(message, reportable: false);
}

class ParsingFailure extends Failure {
  const ParsingFailure([String message = 'Parsing failed']) : super(message);
}

class UnknownFailure extends Failure {
  const UnknownFailure([String message = 'Unknown error occurred'])
      : super(message);
}

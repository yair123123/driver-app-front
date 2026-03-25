import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object?> get props => [message];
}

class NoInternetFailure extends Failure {
  const NoInternetFailure() : super("No internet connection");
}

class TimeoutFailure extends Failure {
  const TimeoutFailure() : super("Request timed out");
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = "Network error"]);
}

class ServerFailure extends Failure {
  const ServerFailure([super.message = "Server error"]);
}

class DataIsEmpty extends Failure {
  const DataIsEmpty([super.message = "No data available"]);
}

class BadRequestFailure extends Failure {
  const BadRequestFailure([super.message = "Bad request"]);
}

class NotModified extends Failure {
  const NotModified([super.message = "not modified"]);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure([super.message = "Unauthorized"]);
}

class ForbiddenFailure extends Failure {
  const ForbiddenFailure([super.message = "Forbidden"]);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = "Not found"]);
}

class ConflictFailure extends Failure {
  const ConflictFailure([super.message = "Conflict"]);
}

class ServerValidationFailure extends Failure {
  const ServerValidationFailure([super.message = "Validation error"]);
}
class ServerNotReadyFailure extends Failure {
  const ServerNotReadyFailure([super.message = "server not ready error"]);
}

// ---------------------------------------------------------------------------
// 📁 FILE SYSTEM FAILURES
// ---------------------------------------------------------------------------

class WriteFileFailure extends Failure {
  const WriteFileFailure([super.message = "Failed to write file"]);
}

class ReadFileFailure extends Failure {
  const ReadFileFailure([super.message = "Failed to read file"]);
}

class FileNotFoundFailure extends Failure {
  const FileNotFoundFailure([super.message = "File not found"]);
}

class InsufficientStorageFailure extends Failure {
  const InsufficientStorageFailure([super.message = "Insufficient storage"]);
}

class DatabaseReadFailure extends Failure {
  const DatabaseReadFailure([super.message = "Database read error"]);
}

class DatabaseWriteFailure extends Failure {
  const DatabaseWriteFailure([super.message = "Database write error"]);
}

class DatabaseConnectionFailure extends Failure {
  const DatabaseConnectionFailure([
    super.message = "Database connection error",
  ]);
}

class AuthFailure extends Failure {
  const AuthFailure([super.message = "Authentication error"]);
}

class InvalidCredentialsFailure extends Failure {
  const InvalidCredentialsFailure([
    super.message = "Invalid username or password",
  ]);
}

class SecureStorageReadFailure extends Failure {
  const SecureStorageReadFailure([
    super.message = "Failed to read from secure storage",
  ]);
}

class SecureStorageWriteFailure extends Failure {
  const SecureStorageWriteFailure([
    super.message = "Failed to write to secure storage",
  ]);
}

class SecureStorageClearFailure extends Failure {
  const SecureStorageClearFailure([
    super.message = "Failed to clear secure storage",
  ]);
}

class TokenExpiredFailure extends Failure {
  const TokenExpiredFailure([super.message = "Token expired"]);
}

class UserNotFoundFailure extends Failure {
  const UserNotFoundFailure([super.message = "User not found"]);
}

class PermissionDeniedFailure extends Failure {
  const PermissionDeniedFailure([super.message = "Permission denied"]);
}

class EmptyResultFailure extends Failure {
  const EmptyResultFailure([super.message = "No results found"]);
}

class InvalidInputFailure extends Failure {
  const InvalidInputFailure([super.message = "Invalid input"]);
}

class ValidationFailure extends Failure {
  const ValidationFailure([super.message = "Validation failed"]);
}

class QueryIsEmpty extends Failure {
  const QueryIsEmpty([super.message = "Query is empty"]);
}
class EmptyTopicsFailure extends Failure {
  const EmptyTopicsFailure([super.message = "Topics is empty"]);
}

class ParsingFailure extends Failure {
  const ParsingFailure([super.message = "Parsing failed"]);
}

class UnknownFailure extends Failure {
  const UnknownFailure([super.message = "Unknown error occurred"]);
}

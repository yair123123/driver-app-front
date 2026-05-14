class SocketError {
  const SocketError({this.code, this.message, this.details});

  final String? code;
  final String? message;
  final Map<String, dynamic>? details;
}

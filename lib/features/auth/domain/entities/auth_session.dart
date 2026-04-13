class AuthSession {
  final String? accessToken;
  final String? refreshToken;
  final DateTime? expiresAt;

  const AuthSession({
    this.accessToken,
    this.refreshToken,
    this.expiresAt,
  });

  bool get hasValidAccess =>
      accessToken != null &&
          (expiresAt == null || DateTime.now().isBefore(expiresAt!));

  AuthSession copyWith({
    String? accessToken,
    String? refreshToken,
    DateTime? expiresAt,
  }) {
    return AuthSession(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresAt: expiresAt ?? this.expiresAt,
    );
  }
}

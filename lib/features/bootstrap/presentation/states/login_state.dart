class LoginState {
  bool isLoading;
  String? errorMessage;

  LoginState({
    this.isLoading = false,
    this.errorMessage,
  });

  LoginState copyWith({
    bool? isLoading,
    String? errorMessage,
  }) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
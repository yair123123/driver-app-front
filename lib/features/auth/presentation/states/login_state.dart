import 'package:driver_app/core/error/failure.dart';

class LoginState {
  bool isLoading;
  Failure? error;

  LoginState({
    this.isLoading = false,
    this.error,
  });

  LoginState copyWith({
    bool? isLoading,
    Failure? error,
  }) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
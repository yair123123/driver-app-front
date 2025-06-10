
class DispatchState {
  final bool isSending;
  final bool isLoading;
  final String errorMessage;
  DispatchState({
    required this.isSending,
    required this.isLoading,
    required this.errorMessage,
  });
  DispatchState copyWith({
    bool? isSending,
    bool? isLoading,
    String? errorMessage,
  }) {
    return DispatchState(
      isSending: isSending ?? this.isSending,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  static DispatchState initial(  ) {
    return DispatchState(
      isSending: false,
      isLoading: false,
      errorMessage: "",
    );
  }
}

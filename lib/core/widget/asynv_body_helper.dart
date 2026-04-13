import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/core/error/error_body.dart';
import 'package:driver_app/core/error/failure.dart';

class AsyncBody<T> extends StatelessWidget {
  final AsyncValue<T> value;
  final Widget Function(T data) builder;
  final void Function()? onRetry;
  final bool blackBackground;
  final bool disableLoading;
  final Widget? loadingPage;

  const AsyncBody({
    super.key,
    this.loadingPage,
    this.disableLoading = false,
    required this.value,
    required this.builder,
    this.onRetry,
    this.blackBackground = false,
  });

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    return value.when(
      data: builder,
      error: (e, s) => ErrorBody(
        onRetry: onRetry,
        failure: e as Failure,
        blackBackground: blackBackground,
      ),
      loading: () => disableLoading
          ? const SizedBox.shrink()
          : loadingPage ??
                Center(child: CircularProgressIndicator(color: primary)),
    );
  }
}

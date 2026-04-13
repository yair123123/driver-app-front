import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:driver_app/core/error/error_card.dart';

class AsyncCardHelper<T> extends StatelessWidget {
  final AsyncValue<T> value;
  final Widget Function(T data) builder;
  final void Function()? onRetry;
  const AsyncCardHelper({
    super.key,
    required this.value,
    required this.builder,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    return value.when(
      data: builder,
      error: (e, s) => ErrorCard(
        onRetry: onRetry,
        failure: e,
      ),
      loading: () => Center(child: CircularProgressIndicator(color: primary)),
    );
  }
}

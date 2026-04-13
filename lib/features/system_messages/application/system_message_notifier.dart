import 'dart:collection';
import 'package:driver_app/features/system_messages/domain/system_message.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SystemMessageNotifier extends StateNotifier<Queue<SystemMessage>> {
  SystemMessageNotifier() : super(Queue<SystemMessage>());

  void enqueue(SystemMessage msg) {
    final next = Queue<SystemMessage>.of(state);

    if (msg.dedupeKey != null &&
        next.any((m) => m.dedupeKey == msg.dedupeKey)) {
      return;
    }

    next.addLast(msg);
    state = next;
  }

  SystemMessage? consumeNext() {
    if (state.isEmpty) return null;
    final next = Queue<SystemMessage>.of(state);
    final msg = next.removeFirst();
    state = next;
    return msg;
  }

  void clear() => state = Queue<SystemMessage>();
}

final systemMessageProvider =
    StateNotifierProvider<SystemMessageNotifier, Queue<SystemMessage>>(
      (ref) => SystemMessageNotifier(),
    );

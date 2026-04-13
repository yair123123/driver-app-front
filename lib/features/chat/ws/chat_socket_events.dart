import 'package:driver_app/features/chat/domain/entites/message.dart';

class IncomingChatMessageEvent {
  const IncomingChatMessageEvent({
    required this.message,
  });

  final Message message;
}


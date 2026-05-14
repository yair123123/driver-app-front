import 'package:driver_app/features/chat/domain/entites/message.dart';
import 'package:driver_app/features/realtime/domain/constants/socket_type_codes.dart';

import '../../../realtime/data/datasources/realtime_remote_datasource.dart';
import '../../../realtime/data/dtos/socket_outgoing_message_dto.dart';
import '../../domain/constants/ride_operation_codes.dart';

class MessagesWebSocketDatasource {
  MessagesWebSocketDatasource(this._manager);

  final RealtimeRemoteDataSource _manager;

  Stream<Message> get chatEvents {
    return _manager.events
        .where((event) => event.operationCode == ChatOperationCodes.sendMessage)
        .map((event) => Message.fromJson(event.content!));
  }

  void sendMessage(Message message) {
    _manager.send(
      SocketOutgoingMessageDto(
        typeCode: SocketTypeCodes.chat,
        operationCode: ChatOperationCodes.sendMessage,
        content: message.toJson(),
      ),
    );
  }
}

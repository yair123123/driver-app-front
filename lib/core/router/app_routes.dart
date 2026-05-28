abstract final class AppRoutes {
  static const splash = '/';
  static const login = '/login';
  static const forceUpdate = '/force_update';
  static const ridesList = '/rides/list';
  static const ridesHub = '/rides/hub';
  static const dispatcherSummary = '/dispatcher/summary';
  static const chats = '/chats';
  static const chatDetails = ':${RouteParams.chatId}';
  static const settings = '/settings';

  static String chat(String chatId) => '$chats/$chatId';
}

abstract final class RouteParams {
  static const chatId = 'chatId';
}

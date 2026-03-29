import 'package:flutter/widgets.dart';

class ImageAssets {
  ImageAssets._();

  static String getImagePath(String imageName) {
    return 'assets/images/$imageName';
  }

  static const String noNetworkError = 'assets/images/no_network_error.png';
  static const String refreshError = 'assets/images/refresh_error.png';
  static const String defaultError = 'assets/images/default_error.png';
  static const String businessAndEconomy =
      'assets/images/topics_images/business.png';
  static const String citiesInIsrael = 'assets/images/topics_images/cities.png';
  static const String cultureAndEntertainment =
      'assets/images/topics_images/culture.png';
  static const String currentAffairsAndNews =
      'assets/images/topics_images/news.png';
  static const String health = 'assets/images/topics_images/health.png';
  static const String sports = 'assets/images/topics_images/sports.png';
  static const String technologyAndInnovation =
      'assets/images/topics_images/technology.png';
  static const String transportationAndAutomotive =
      'assets/images/topics_images/cars.png';

  static const String torahAndJudaism = 'assets/images/topics_images/torah.png';

  static const String forWomen = 'assets/images/topics_images/to_woman.png';

  static const String topicDefault = 'assets/images/topics_images/default.png';

  static const Map<String, String> topicKeyToAssetPath = {
    'business_and_economy': businessAndEconomy,
    'cities_in_israel': citiesInIsrael,
    'culture_and_entertainment': cultureAndEntertainment,
    'current_affairs_and_news': currentAffairsAndNews,
    'health': health,
    'sports': sports,
    'technology_and_innovation': technologyAndInnovation,
    'transportation_and_automotive': transportationAndAutomotive,
    'torah_and_judaism': torahAndJudaism,
    'default': topicDefault,
  };

  static AssetImage topicImage(String? topicKey) {
    if (topicKey == null || topicKey.trim().isEmpty) {
      return const AssetImage(topicDefault);
    }
    final key = topicKey.trim().toLowerCase();
    final path = topicKeyToAssetPath[key] ?? topicDefault;
    return AssetImage(path);
  }

  static ImageProvider topicImageProvider({
    required String? input,
    bool isUrl = false,
  }) {
    if (input == null || input.trim().isEmpty) {
      return const AssetImage(topicDefault);
    }
    if (isUrl) return NetworkImage(input);
    return topicImage(input);
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

const int homeFeedTabIndex = 4;
const int homeReelsTabIndex = 3;
const int homeGroupTabIndex = 2;
const int homeDailySummaryTabIndex = 1;
const int homeAiPageTabIndex = 0;
final homeTabIndexProvider = StateProvider<int>((ref) {
  return homeAiPageTabIndex;
});

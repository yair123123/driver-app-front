sealed class NavigationIntent {
  final String location;

  const NavigationIntent(this.location);
}

class OpenArticleIntent extends NavigationIntent {
  final String articleId;

  const OpenArticleIntent(this.articleId)
    : super("/home/article-page/$articleId");
}

class OpenMessageIntent extends NavigationIntent {
  final String groupId;
  final String messageId;

  const OpenMessageIntent(this.groupId, this.messageId)
    : super("/groups/$groupId/$messageId");
}

import 'package:flutter/widgets.dart';
import 'text_normalize.dart';

TextSpan highlightMatches(String text, String query, TextStyle? base, TextStyle? highlight) {
  if (query.trim().isEmpty) return TextSpan(text: text, style: base);

  final normText = normalizeText(text);
  final tokens = normalizeText(query).split(' ').where((t) => t.isNotEmpty).toList();

  final marks = <int, int>{}; 
  for (final token in tokens) {
    int start = 0;
    while (true) {
      final idx = normText.indexOf(token, start);
      if (idx == -1) break;
      marks[idx] = token.length;
      start = idx + token.length;
    }
  }

  if (marks.isEmpty) return TextSpan(text: text, style: base);

  final children = <TextSpan>[];
  int cursor = 0;
  final entries = marks.entries.toList()..sort((a, b) => a.key.compareTo(b.key));

  for (final e in entries) {
    final start = e.key;
    final len = e.value;

    if (cursor < start) {
      children.add(TextSpan(text: text.substring(cursor, start), style: base));
    }
    children.add(TextSpan(text: text.substring(start, start + len), style: highlight));
    cursor = start + len;
  }
  if (cursor < text.length) {
    children.add(TextSpan(text: text.substring(cursor), style: base));
  }

  return TextSpan(children: children);
}

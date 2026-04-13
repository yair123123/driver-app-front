String normalizeText(String s) {
  final lower = s.toLowerCase();
  final noPunct = lower.replaceAll(RegExp(r'[^\p{L}\p{N}\s]+', unicode: true), ' ');
  return noPunct.replaceAll(RegExp(r'\s+'), ' ').trim();
}

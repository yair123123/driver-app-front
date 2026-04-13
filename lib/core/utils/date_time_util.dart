DateTime? convertFromEpoch(int? timestamp) {
  if (timestamp != null) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }
  return null;
}

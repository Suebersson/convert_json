final class ConvertJsonException implements Exception {
  final String message;
  const ConvertJsonException(this.message);
  static T generate<T>(final String message) => throw ConvertJsonException(message);
  @override
  String toString() => message;
}
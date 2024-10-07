final class ConvertJsonExeception implements Exception {
  final String message;
  const ConvertJsonExeception(this.message);
  static T generate<T>(final String message) => throw ConvertJsonExeception(message);
  @override
  String toString() => message;
}
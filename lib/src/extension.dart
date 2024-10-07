import './convert_json.dart';

/// Auxiliar para converter objetos [Map] em json
extension ConvertJsonForMap on Map<String, dynamic> {
  String get encode => ConvertJson.encode(this);
}

/// Auxiliar para converter objetos [List] em json
extension ConvertJsonForLit on List<dynamic> {
  String get encode => ConvertJson.encode(this);
}

extension ConvertJsonForString on String {

  /// Essa função não dispensa tratamentos de erros
  Map<String, dynamic> get decodeToMap => ConvertJson.decode<Map<String, dynamic>>(this);

  /// Essa função não dispensa tratamentos de erros
  List<dynamic> get decodeToList => ConvertJson.decode<List<dynamic>>(this);

  /// Essa função não dispensa tratamentos de erros
  dynamic get decode => ConvertJson.decode(this);

  String get adjustReformattedJson => ConvertJson.adjustReformattedJson(this);

}
import './convert_json.dart';

/// Auxiliar para converter objetos [Map] em json
extension ConvertJsonForMap on Map<String, dynamic> {
  /// Tipos de objetos padrão para o formato json Key:[String], Key:[int], Key:[bool] ou Key:[Null]
  /// 
  /// Tipos de objetos que podem ser codificados [Map<String, dynamic>], [Map<String, Object>],
  /// [Map<String, String>], [List<Map<String, dynamic>>], [List<String|int|double|bool>], ...
  ///
  /// É uma [Map] ou uma [List] com instâncias de [Object], essa função deve ser usada com cuidado 
  /// e não dispensa o uso de tratamentos de erro onde ela será usada
  String get encode => ConvertJson.encode(this);
}

/// Auxiliar para converter objetos [List] em json
extension ConvertJsonForLit on List<dynamic> {
  /// Tipos de objetos padrão para o formato json Key:[String], Key:[int], Key:[bool] ou Key:[Null]
  /// 
  /// Tipos de objetos que podem ser codificados [Map<String, dynamic>], [Map<String, Object>],
  /// [Map<String, String>], [List<Map<String, dynamic>>], [List<String|int|double|bool>], ...
  ///
  /// É uma [Map] ou uma [List] com instâncias de [Object], essa função deve ser usada com cuidado 
  /// e não dispensa o uso de tratamentos de erro onde ela será usada
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
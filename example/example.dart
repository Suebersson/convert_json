import 'dart:developer';
import 'package:convert_json/convert_json_lib.dart';

void main() {

  final Map<String, dynamic> data = {
    'name': 'Xuxa Meneguel',
    'dateBirth': DateTime(1920, 08, 02),
  };

  log(
    data.encode,
    name: 'main > json',
  );

}
import 'dart:convert';

import 'package:http/http.dart' as http;

class Services {
  static const String url = "https://api.kraken.com/0/public/AssetPairs";
  static Future<List> fetchAssetPairs() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        // If server returns an OK response, parse the JSON.
        List list = fromJson(response.body);
        return list;
      } else {
        // If that response was not OK, throw an error.
        throw Exception('Failed to load assets pairs');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List fromJson(String responseBody) {
    final decoded = json.decode(responseBody)['result'];
    List list = decoded.values.toList();
    return list;
//        .cast<Map<String, dynamic>>()
//        .map<AssetPairs>((json) => AssetPairs.fromJson(json))
//        .toList();
  }
}

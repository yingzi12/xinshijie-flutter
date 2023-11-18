import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:xinshijie_flutter/constant.dart';
import 'package:xinshijie_flutter/utils/HttpStatusCodes.dart';


class HttpUtil {

  static const Map<String, String> _defaultHeaders = {
    "Content-Type": "application/json;charset=utf-8;",
  };
  // static Future<http.Response> get(String path) async {
  //   final Uri uri = Uri.parse( baseUrl+ path);
  //   final response = await http.get(uri);
  //
  //   return response;
  // }
  static Future<http.Response> get(String path, [Map<String, String>? queryParams]) async {
    final Uri uri = Uri.parse(baseUrl + path).replace(queryParameters: queryParams);
    return await http.get(uri);
  }



  static Future<http.Response> post(String path, Map<String, dynamic> body) async {
    final Uri uri = Uri.parse(baseUrl + path);
    return await http.post(uri, body: body, headers: _defaultHeaders);
  }



  static Map<String, dynamic> processResponse(http.Response response) {
    if (response.statusCode == HttpStatusCodes.ok) {
      return json.decode(response.body);
    } else {
      // throw HttpException(
      //   'Request failed with status: ${response.statusCode}. ${response.body}',
      // );
      return {'code': response.statusCode, 'message': 'Error', 'data': null};

    }

  }
}

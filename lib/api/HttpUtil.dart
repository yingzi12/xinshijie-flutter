import 'package:http/http.dart' as http;

import '../constant.dart';

class HttpUtil {

  static Future<http.Response> get(String path) async {
    final Uri uri = Uri.parse( baseUrl+ path);
    final response = await http.get(uri);

    return response;
  }

  static Future<http.Response> post(String path, Map<String, String> body) async {
    final Uri uri = Uri.parse(baseUrl + path);
    final response = await http.post(
      uri,
      body: body,
      headers: {"Content-Type": "application/json"}, // 根据需要设置请求头
    );

    return response;
  }
}

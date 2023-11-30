import 'dart:convert';

import 'package:xinshijie_flutter/model/captcha_entity.dart';
import 'package:xinshijie_flutter/model/world_entity.dart';
import 'package:xinshijie_flutter/utils/HttpUtil.dart';

class UsersApi {

  // 类变量（静态变量）
  static String info ="/wiki/user/info";

  static String captchaImage ="/captchaImage";

  static String list ="/wiki/user/list";

  static String add ="/wiki/user/add";


  static String del ="/wiki/user/del";


  static String edit ="/wiki/user/edit";

  static Future<Map<String, dynamic>> addUser(Map<String, String> body) async {
    final response = await HttpUtil.post(add, body);
    return HttpUtil.processResponse(response);
  }

  static Future<Map<String, dynamic>> editUser(Map<String, String> body) async {
    final response = await HttpUtil.post(edit, body);
    return HttpUtil.processResponse(response);
  }

  static Future<List<WorldEntity>> getList(Map<String, String> queryParams) async {
    final response = await HttpUtil.get(list, queryParams);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonMap = json.decode(response.body);
      if (jsonMap['code'] == 200) {
        List<dynamic> jsonData = jsonMap['data'];
        List<WorldEntity> values = parseList<WorldEntity>(json.encode(jsonData), (item) => WorldEntity.fromJson(item as Map<String, dynamic>));
        return values;
      } else {
        throw Exception('Failed to load list: ${jsonMap['message']}');
      }
    } else {
      throw Exception('Failed to load list with status code: ${response.statusCode}');
    }
  }

  static Future<WorldEntity> getInfo(int id) async {
    final response = await HttpUtil.get("$info?id=$id");

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonMap = json.decode(response.body);
      if (jsonMap['code'] == 200) {
        Map<String, dynamic> jsonData = jsonMap['data'];
        return WorldEntity.fromJson(jsonData);
      } else {
        throw Exception('Failed to load info: ${jsonMap['message']}');
      }
    } else {
      throw Exception('Failed to load info with status code: ${response.statusCode}');
    }
  }

  static Future<CaptchaEntity> getCode() async {
    final response = await HttpUtil.get("$captchaImage");

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonMap = json.decode(response.body);
      if (jsonMap['code'] == 200) {
        return CaptchaEntity.fromJson(jsonMap);
      } else {
        throw Exception('Failed to load info: ${jsonMap['message']}');
      }
    } else {
      throw Exception('Failed to load info with status code: ${response.statusCode}');
    }
  }

  static Future<Map<String, dynamic>> deleteUser(int id) async {
    final response = await HttpUtil.get("$del?id=$id");
    return HttpUtil.processResponse(response);
  }

  static List<T> parseList<T>(String responseBody, Function(dynamic) fromJson) {
    final List<dynamic> parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<T>((json) => fromJson(json)).toList();
  }
  // 处理响应


}
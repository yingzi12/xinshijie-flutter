import 'dart:convert';

import 'package:xinshijie_flutter/model/world_entity.dart';
import 'package:xinshijie_flutter/model/world_model.dart';
import 'package:xinshijie_flutter/utils/HttpUtil.dart';

class WorldApi {

  // 类变量（静态变量）
  static String info ="/wiki/world/getInfo";

  static String list ="/wiki/world/list";

  static String random ="/wiki/world/random";


  static String add ="/wiki/world/add";


  static String del ="/wiki/world/del";


  static String edit ="/wiki/world/edit";

  static Future<Map<String, dynamic>> addWorld(Map<String, String> body) async {
    final response = await HttpUtil.post(add, body);
    return HttpUtil.processResponse(response);
  }

  static Future<Map<String, dynamic>> editWorld(Map<String, String> body) async {
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

  static Future<List<WorldEntity>> getRandom(Map<String, String> queryParams) async {
    final response = await HttpUtil.get(random, queryParams);
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
    final response = await HttpUtil.get("$info/$id");

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

  static Future<Map<String, dynamic>> deleteWorld(int id) async {
    final response = await HttpUtil.get("$del?id=$id");
    return HttpUtil.processResponse(response);
  }

  static List<T> parseList<T>(String responseBody, Function(dynamic) fromJson) {
    final List<dynamic> parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<T>((json) => fromJson(json)).toList();
  }
  // 处理响应


}
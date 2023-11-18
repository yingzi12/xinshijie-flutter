import 'dart:convert';

import 'package:xinshijie_flutter/model/chapter_single_entity.dart';
import 'package:xinshijie_flutter/model/world_model.dart';
import 'package:xinshijie_flutter/utils/HttpUtil.dart';

class ChapterApi {

  // 类变量（静态变量）
  static String info ="/wiki/chapter/info";

  static String list ="/wiki/chapter/list";

  static String add ="/wiki/chapter/add";


  static String del ="/wiki/chapter/del";


  static String edit ="/wiki/chapter/edit";

  static Future<Map<String, dynamic>> addWorld(Map<String, String> body) async {
    final response = await HttpUtil.post(add, body);
    return HttpUtil.processResponse(response);
  }

  static Future<Map<String, dynamic>> editWorld(Map<String, String> body) async {
    final response = await HttpUtil.post(edit, body);
    return HttpUtil.processResponse(response);
  }

  static Future<List<ChapterSingleEntity>> getList(Map<String, String> queryParams) async {
    final response = await HttpUtil.get(list, queryParams);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonMap = json.decode(response.body);
      if (jsonMap['code'] == 200) {
        List<dynamic> jsonData = jsonMap['data'];
        List<ChapterSingleEntity> values = parseList<ChapterSingleEntity>(json.encode(jsonData), (item) => ChapterSingleEntity.fromJson(item as Map<String, dynamic>));
        return values;
      } else {
        throw Exception('Failed to load list: ${jsonMap['message']}');
      }
    } else {
      throw Exception('Failed to load list with status code: ${response.statusCode}');
    }
  }

  static Future<ChapterSingleEntity> getInfo(int id) async {
    final response = await HttpUtil.get("$info?id=$id");

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonMap = json.decode(response.body);
      if (jsonMap['code'] == 200) {
        Map<String, dynamic> jsonData = jsonMap['data'];
        return ChapterSingleEntity.fromJson(jsonData);
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
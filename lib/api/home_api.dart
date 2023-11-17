import 'dart:convert';

import 'package:xinshijie_flutter/utils/HttpUtil.dart';
import 'package:xinshijie_flutter/utils/SharedPreferencesUtil.dart';
import 'package:xinshijie_flutter/vo/HomeVo.dart';

class HomeApi{


  static Future<HomeEntity> getStory(int kind) async {
    return _getDataFromApiOrCache('story', kind);
  }

  static Future<HomeEntity> getWorld(int kind) async {
    return _getDataFromApiOrCache('world', kind);
  }

  // static Future<HomeEntity> _getDataFromApiOrCache(String type, int kind) async {
  //   String key = '${type}:home:$kind';
  //   if (SharedPreferencesUtil.containsKey(key)) {
  //     // 如果已缓存，直接从SharedPreferences获取数据
  //     return HomeEntity.fromJson(SharedPreferencesUtil.getString(key) ?? "{code:201}");
  //   } else {
  //     return   HomeEntity.fromJson(_fetchDataFromApiAndCache(key, '/${type}/Home?kind=$kind'));
  //   }
  // }

  // static Future<String> _fetchDataFromApiAndCache(String key, String path) async {
  //   try {
  //     final response = await HttpUtil.get(path);
  //
  //     if (response.statusCode == 200) {
  //       var data = json.decode(response.body);
  //       if (data['code'] == 200) {
  //             SharedPreferencesUtil.setString(key, data['data']);
  //         return data['data'];
  //       } else {
  //         return "Error: ${data['message']}";
  //       }
  //     } else {
  //       return "Error: Failed to load data";
  //     }
  //   } catch (e) {
  //     // 处理异常
  //     return "Error: Exception occurred - $e";
  //   }
  // }

  static Future<HomeEntity> _getDataFromApiOrCache(String type, int kind) async {
    String key = '${type}:home:$kind';
    if (SharedPreferencesUtil.containsKey(key)) {
      String? jsonString = SharedPreferencesUtil.getString(key);
      if (jsonString != null) {
        return HomeEntity.fromJson(json.decode(jsonString));
      }
    }
    try {
      String jsonString = await _fetchDataFromApiAndCache(key, '/${type}/Home?kind=$kind');
      return HomeEntity.fromJson(json.decode(jsonString));
    } catch (e) {
      throw Exception('Failed to load data for $type with kind $kind: $e');
    }
  }

  static Future<String> _fetchDataFromApiAndCache(String key, String path) async {
    final response = await HttpUtil.get(path);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      if (data['code'] == 200) {
        SharedPreferencesUtil.setString(key, json.encode(data['data']));
        return json.encode(data['data']);
      } else {
        throw Exception('API Error: ${data['message']}');
      }
    } else {
      throw Exception('HTTP Error: Failed to load data with status code: ${response.statusCode}');
    }
  }
}
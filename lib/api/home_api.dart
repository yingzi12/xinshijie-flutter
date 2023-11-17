import 'dart:convert';

import 'package:xinshijie_flutter/utils/HttpUtil.dart';
import 'package:xinshijie_flutter/utils/SharedPreferencesUtil.dart';

class HomeApi{


  static Future<String> getStory(int kind) async {
    return _getDataFromApiOrCache('story', kind);
  }

  static Future<String> getWorld(int kind) async {
    return _getDataFromApiOrCache('world', kind);
  }

  static Future<String> _getDataFromApiOrCache(String type, int kind) async {
    String key = '${type}:home:$kind';
    if (SharedPreferencesUtil.containsKey(key)) {
      // 如果已缓存，直接从SharedPreferences获取数据
      return SharedPreferencesUtil.getString(key) ?? "No data found";
    } else {
      return _fetchDataFromApiAndCache(key, '/${type}/Home?kind=$kind');
    }
  }

  static Future<String> _fetchDataFromApiAndCache(String key, String path) async {
    try {
      final response = await HttpUtil.get(path);

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        if (data['code'] == 200) {
          SharedPreferencesUtil.setString(key, data['data']);
          return data['data'];
        } else {
          return "Error: ${data['message']}";
        }
      } else {
        return "Error: Failed to load data";
      }
    } catch (e) {
      // 处理异常
      return "Error: Exception occurred - $e";
    }
  }
}
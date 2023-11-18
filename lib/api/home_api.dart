import 'dart:convert';

import 'package:xinshijie_flutter/model/home_entity.dart';
import 'package:xinshijie_flutter/utils/HttpUtil.dart';
import 'package:xinshijie_flutter/utils/SharedPreferencesUtil.dart';

class HomeApi{

  static Future<HomeEntity> getStory(int kind) async {
    return _getDataFromApiOrCache('story', kind);
  }

  static Future<HomeEntity> getWorld(int kind) async {
    return _getDataFromApiOrCache('world', kind);
  }

  static Future<HomeEntity> _getDataFromApiOrCache(String type, int kind) async {
    String key = '${type}:home:$kind';
    // if (SharedPreferencesUtil.containsKey(key)) {
    //   String? jsonString = SharedPreferencesUtil.getString(key);
    //   if (jsonString != null) {
    //     return HomeEntity.fromJson(json.decode(jsonString));
    //   }
    // }
    try {
      String jsonString = await _fetchDataFromApiAndCache(key, '/wiki/home/${type}?kind=$kind');
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
import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
//带加密
class SecureStorage {
  final _storage = const FlutterSecureStorage();

  Future<void> storeLoginToken(String token) async {
    await _storage.write(key: 'login_token', value: token);
  }

  Future<String?> getLoginToken() async {
    return await _storage.read(key: 'login_token');
  }

  Future<bool> isLoggedIn() async {
    var token = await getLoginToken();
    return token != null;
  }

  Future<void> clearLoginToken() async {
    await _storage.delete(key: 'login_token');
  }


  Future<void> saveData(String key, String value, {Duration? expiryDuration}) async {
    final expiryTime = DateTime.now().add(expiryDuration ?? Duration(days: 1)).toIso8601String();
    final data = {'value': value, 'expiry': expiryTime};
    await _storage.write(key: key, value: jsonEncode(data));
  }

  Future<String?> getData(String key) async {
    final dataString = await _storage.read(key: key);
    if (dataString != null) {
      final data = jsonDecode(dataString);
      final expiryTime = DateTime.parse(data['expiry']);

      if (DateTime.now().isBefore(expiryTime)) {
        return data['value'];
      } else {
        await _storage.delete(key: key); // 删除过期数据
        return null;
      }
    }
    return null;
  }
}
// 假设这是登录成功后的回调
// void onLoginSuccess(String token) {
//   SecureStorage().storeLoginToken(token);
//   // 这里可以进行后续操作，如导航到主页等
// }

// void checkLoginStatus(BuildContext context) async {
//   var isLoggedIn = await SecureStorage().isLoggedIn();
//   if (!isLoggedIn) {
//     Navigator.of(context).pushReplacementNamed('/login');
//   }
// }

// 保存数据：
// 当你需要保存数据并设置过期时间时：
//
// dart
// Copy code
// void saveUserData(String key, String data) {
//   // 假设我们设置数据24小时后过期
//   SecureStorage().saveData(key, data, expiryDuration: Duration(hours: 24));
// }
// 获取数据：
// 获取数据的方法不变，但内部逻辑会检查数据是否过期。
//
// dart
// Copy code
// void getUserData(String key) async {
//   String? data = await SecureStorage().getData(key);
//   if (data != null) {
//     // 使用 data
//   } else {
//     // 数据可能不存在或已过期
//   }
// }
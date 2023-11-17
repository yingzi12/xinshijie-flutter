import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';

import 'package:xinshijie_flutter/app/app_scene.dart';
import 'package:xinshijie_flutter/utils/SharedPreferencesUtil.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesUtil.init();
  runApp(AppPage());

  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

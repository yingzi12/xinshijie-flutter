import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:battery/battery.dart';
import 'dart:io';

import 'package:xinshijie_flutter/public.dart'; // Ensure this import is necessary

class BatteryView extends StatefulWidget {
  @override
  _BatteryViewState createState() => _BatteryViewState();
}

class _BatteryViewState extends State<BatteryView> {
  double batteryLevel = 0;

  @override
  void initState() {
    super.initState();
    getBatteryLevel();
  }

  Future<void> getBatteryLevel() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      var androidInfo = await deviceInfo.androidInfo;
      if (!androidInfo.isPhysicalDevice) return;
    } else if (Platform.isIOS) {
      var iosInfo = await deviceInfo.iosInfo;
      if (!iosInfo.isPhysicalDevice) return;
    }

    try {
      var level = await Battery().batteryLevel;
      if (mounted) {
        setState(() {
          batteryLevel = level / 100.0;
        });
      }
    } catch (e) {
      // Handle any errors here
      print('Failed to get battery level: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 27,
      height: 12,
      child: Stack(
        children: <Widget>[
          Image.asset('img/reader_battery.png'),
          Container(
            margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
            width: 20 * batteryLevel,
            color: SQColor.golden, // Ensure this color is defined in your public.dart
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Dispose any controllers or other resources here
    super.dispose();
  }
}

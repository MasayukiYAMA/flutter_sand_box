
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterSandBox {
  static const MethodChannel _channel = MethodChannel('flutter_sand_box');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

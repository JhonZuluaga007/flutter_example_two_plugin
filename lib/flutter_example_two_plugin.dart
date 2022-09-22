import 'package:flutter/services.dart';

import 'flutter_example_two_plugin_platform_interface.dart';

class FlutterExampleTwoPlugin {
  static const MethodChannel _methodChannel =
      MethodChannel('flutter_example_two_plugin');

  Future<String?> getPlatformVersion() {
    return FlutterExampleTwoPluginPlatform.instance.getPlatformVersion();
  }

  Future<Color> generateColor() async {
    final randomColor = await _methodChannel.invokeMethod("generateColor");
    return Color.fromRGBO(randomColor[0], randomColor[1], randomColor[2], 1.0);
  }
}

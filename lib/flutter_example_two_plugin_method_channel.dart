import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'flutter_example_two_plugin_platform_interface.dart';

/// An implementation of [FlutterExampleTwoPluginPlatform] that uses method channels.
class MethodChannelFlutterExampleTwoPlugin
    extends FlutterExampleTwoPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_example_two_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<Color> generateColor() async {
    final randomColor =
        await methodChannel.invokeMethod<Color>("generateColor");
    return randomColor ?? Colors.black;
  }
}

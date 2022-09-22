import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_example_two_plugin_method_channel.dart';

abstract class FlutterExampleTwoPluginPlatform extends PlatformInterface {
  /// Constructs a FlutterExampleTwoPluginPlatform.
  FlutterExampleTwoPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterExampleTwoPluginPlatform _instance = MethodChannelFlutterExampleTwoPlugin();

  /// The default instance of [FlutterExampleTwoPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterExampleTwoPlugin].
  static FlutterExampleTwoPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterExampleTwoPluginPlatform] when
  /// they register themselves.
  static set instance(FlutterExampleTwoPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

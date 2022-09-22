
import 'flutter_example_two_plugin_platform_interface.dart';

class FlutterExampleTwoPlugin {
  Future<String?> getPlatformVersion() {
    return FlutterExampleTwoPluginPlatform.instance.getPlatformVersion();
  }
}

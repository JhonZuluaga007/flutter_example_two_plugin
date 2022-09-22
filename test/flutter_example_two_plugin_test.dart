import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_example_two_plugin/flutter_example_two_plugin.dart';
import 'package:flutter_example_two_plugin/flutter_example_two_plugin_platform_interface.dart';
import 'package:flutter_example_two_plugin/flutter_example_two_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterExampleTwoPluginPlatform
    with MockPlatformInterfaceMixin
    implements FlutterExampleTwoPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterExampleTwoPluginPlatform initialPlatform = FlutterExampleTwoPluginPlatform.instance;

  test('$MethodChannelFlutterExampleTwoPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterExampleTwoPlugin>());
  });

  test('getPlatformVersion', () async {
    FlutterExampleTwoPlugin flutterExampleTwoPlugin = FlutterExampleTwoPlugin();
    MockFlutterExampleTwoPluginPlatform fakePlatform = MockFlutterExampleTwoPluginPlatform();
    FlutterExampleTwoPluginPlatform.instance = fakePlatform;

    expect(await flutterExampleTwoPlugin.getPlatformVersion(), '42');
  });
}

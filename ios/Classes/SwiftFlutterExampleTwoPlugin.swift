import Flutter
import UIKit

public class SwiftFlutterExampleTwoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_example_two_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterExampleTwoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch (call.method) {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)  
    case "generateColor":
      let randomColor = generateColor();
      result(randomColor)
      break;
    default:
      result("Not Implemented")
      break;
    }
  }

  private func generateColor() -> [Int] {
    return [0,0,0].map { (v) -> Int in 
      return Int.random(in: 0..<256)
    }
  }
}

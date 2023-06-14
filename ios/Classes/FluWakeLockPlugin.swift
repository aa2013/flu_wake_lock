import Flutter
import UIKit

public class FluWakeLockPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flu_wake_lock", binaryMessenger: registrar.messenger())
    let instance = FluWakeLockPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "enable" {
      // 开启屏幕常亮
      UIApplication.shared.isIdleTimerDisabled = true
      result(true)
    } else if call.method == "disable" {
      // 关闭屏幕常亮
      UIApplication.shared.isIdleTimerDisabled = false
      result(false)
    } else {
      result(FlutterMethodNotImplemented)
    } 
  }
}

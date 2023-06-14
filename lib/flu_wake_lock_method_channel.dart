import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flu_wake_lock_platform_interface.dart';

/// An implementation of [FluWakeLockPlatform] that uses method channels.
class MethodChannelFluWakeLock extends FluWakeLockPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flu_wake_lock');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool?> enable() async {
    return await methodChannel.invokeMethod<bool>('enable');
  }

  @override
  Future<bool?> disable() async {
    return await methodChannel.invokeMethod<bool>('disable');
  }
}

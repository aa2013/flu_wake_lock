import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flu_wake_lock_method_channel.dart';

abstract class FluWakeLockPlatform extends PlatformInterface {
  /// Constructs a FluWakeLockPlatform.
  FluWakeLockPlatform() : super(token: _token);

  static final Object _token = Object();

  static FluWakeLockPlatform _instance = MethodChannelFluWakeLock();

  /// The default instance of [FluWakeLockPlatform] to use.
  ///
  /// Defaults to [MethodChannelFluWakeLock].
  static FluWakeLockPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FluWakeLockPlatform] when
  /// they register themselves.
  static set instance(FluWakeLockPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> enable() {
    throw UnimplementedError('enable() has not been implemented.');
  }

  Future<bool?> disable() {
    throw UnimplementedError('disable() has not been implemented.');
  }
}

// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'dart:developer';

import 'flu_wake_lock_platform_interface.dart';

class FluWakeLock {
  Future<String?> getPlatformVersion() {
    return FluWakeLockPlatform.instance.getPlatformVersion();
  }

  Future<bool?> enable() {
    log('ENABLE WAKE LOCK', name: 'FluWakeLock');
    return FluWakeLockPlatform.instance.enable();
  }

  Future<bool?> disable() {
    log('DISABLE WAKE LOCK', name: 'FluWakeLock');
    return FluWakeLockPlatform.instance.disable();
  }
}

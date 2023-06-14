import 'package:flutter_test/flutter_test.dart';
import 'package:flu_wake_lock/flu_wake_lock.dart';
import 'package:flu_wake_lock/flu_wake_lock_platform_interface.dart';
import 'package:flu_wake_lock/flu_wake_lock_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFluWakeLockPlatform
    with MockPlatformInterfaceMixin
    implements FluWakeLockPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<bool?> enable() => Future.value(true);

  @override
  Future<bool?> disable() => Future.value(false);
}

void main() {
  final FluWakeLockPlatform initialPlatform = FluWakeLockPlatform.instance;

  test('$MethodChannelFluWakeLock is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFluWakeLock>());
  });

  test('getPlatformVersion', () async {
    FluWakeLock fluWakeLockPlugin = FluWakeLock();
    MockFluWakeLockPlatform fakePlatform = MockFluWakeLockPlatform();
    FluWakeLockPlatform.instance = fakePlatform;

    expect(await fluWakeLockPlugin.getPlatformVersion(), '42');
  });

  test('enable', () async {
    FluWakeLock fluWakeLockPlugin = FluWakeLock();
    MockFluWakeLockPlatform fakePlatform = MockFluWakeLockPlatform();
    FluWakeLockPlatform.instance = fakePlatform;

    expect(await fluWakeLockPlugin.enable(), true);
  });

  test('disable', () async {
    FluWakeLock fluWakeLockPlugin = FluWakeLock();
    MockFluWakeLockPlatform fakePlatform = MockFluWakeLockPlatform();
    FluWakeLockPlatform.instance = fakePlatform;

    expect(await fluWakeLockPlugin.disable(), false);
  });
}

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flu_wake_lock/flu_wake_lock_method_channel.dart';

void main() {
  MethodChannelFluWakeLock platform = MethodChannelFluWakeLock();
  const MethodChannel channel = MethodChannel('flu_wake_lock');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}

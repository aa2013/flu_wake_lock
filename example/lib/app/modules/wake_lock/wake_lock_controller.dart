import 'package:flu_wake_lock/flu_wake_lock.dart';
import 'package:get/get.dart';

class WakeLockController extends GetxController {
  //TODO: Implement WakeLockController.
  FluWakeLock _fluWakeLock = FluWakeLock();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    _fluWakeLock.enable();
    super.onReady();
  }

  @override
  void onClose() {
    _fluWakeLock.disable();
    super.onClose();
  }
}

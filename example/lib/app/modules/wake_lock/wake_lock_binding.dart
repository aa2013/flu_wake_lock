import 'package:get/get.dart';

import 'wake_lock_controller.dart';

class WakeLockBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WakeLockController());
  }
}

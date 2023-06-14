import 'package:get/get.dart';

import '../modules/wake_lock/wake_lock_binding.dart';
import '../modules/wake_lock/wake_lock_page.dart';

class WakeLockRoutes {
  WakeLockRoutes._();

  static const wakeLock = '/wake-lock';

  static final routes = [
    GetPage(
      name: wakeLock,
      page: () => const WakeLockPage(),
      binding: WakeLockBinding(),
    ),
  ];
}

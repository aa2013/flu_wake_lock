import 'home_routes.dart';
import 'wake_lock_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/home';

  static final routes = [
    ...HomeRoutes.routes,
    ...WakeLockRoutes.routes,
  ];
}

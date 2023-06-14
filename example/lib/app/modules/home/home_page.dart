import 'package:flu_wake_lock_example/app/routes/wake_lock_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed(WakeLockRoutes.wakeLock),
          child: Text(
            'HomePage is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

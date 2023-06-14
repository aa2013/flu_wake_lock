import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'wake_lock_controller.dart';

class WakeLockPage extends GetView<WakeLockController> {
  const WakeLockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WakeLockPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WakeLockPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

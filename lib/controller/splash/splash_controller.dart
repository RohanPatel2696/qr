// Package Imports:
import 'package:get/get.dart';

// Project Imports:
import 'package:qr/controller/export_screens.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    showSplash();
  }

  Future<void> showSplash() async {
    await Future.delayed(Duration(seconds: 2));
    Get.offAll(() => DashboardScreen());
  }
}

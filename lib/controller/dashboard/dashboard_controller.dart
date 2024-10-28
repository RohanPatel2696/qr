// Package Imports:
import 'package:get/get.dart';

// Project Imports:
import 'package:qr/screens/qr/qr_scan_screen.dart';

class DashboardController extends GetxController {
  String? scanValue;

  void scanCode() async {
    String value = await Get.to(() => QrScanScreen());

    if (value.isNotEmpty) {
      scanValue = value;

      update();
    }
  }
}

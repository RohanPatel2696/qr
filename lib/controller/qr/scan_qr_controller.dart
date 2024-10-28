// Flutter Imports:
import 'package:flutter/material.dart';

// Package Imports:
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanQrController extends GetxController {
  final GlobalKey scanCodeKey = GlobalKey(debugLabel: 'ScanCode');
  late QRViewController qrController;
  late Barcode scannedCode;

  @override
  void onInit() {
    super.onInit();
  }

  void onQRViewCreated(QRViewController controller) {
    qrController = controller;
    update();

    controller.scannedDataStream.listen((scanData) {
      scannedCode = scanData;

      toast(scanData.code.toString(), print: true);
      controller.stopCamera();
      update();

      Get.back(result: scannedCode.code);
    });
  }

  void permissionSet(BuildContext context, QRViewController controller, bool access) {
    if (!access) {
      toast('Permission denied');
    }
  }

  @override
  void dispose() {
    qrController.dispose();
    super.dispose();
  }
}

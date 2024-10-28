// Flutter Imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Package Imports:
import 'package:nb_utils/nb_utils.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

// Project Imports:
import 'package:qr/controller/qr/scan_qr_controller.dart';

class QrScanScreen extends StatelessWidget {
  const QrScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ScanQrController>(
      init: ScanQrController(),
      builder: (controller) {
        return Scaffold(
          appBar: appBarWidget(
            'Scan the QR',
            showBack: Navigator.canPop(context),
            textColor: white,
            textSize: 20,
            center: true,
            color: Colors.blueGrey,
          ),
          body: Container(
            height: Get.height,
            width: Get.width,
            child: QRView(
              key: controller.scanCodeKey,
              onQRViewCreated: controller.onQRViewCreated,
              overlay: QrScannerOverlayShape(
                borderColor: Colors.blueAccent,
                borderRadius: defaultRadius,
                cutOutSize: (Get.width < 400 || Get.height < 400) ? 150 : 300,
              ),
              onPermissionSet: (p0, p1) => controller.permissionSet(context, p0, p1),
            ),
          ),
        );
      },
    );
  }
}

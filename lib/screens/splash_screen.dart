// Flutter Imports:
import 'package:flutter/material.dart';

// Package Imports:
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

// Project Imports:
import 'package:qr/controller/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            child: Text('QR Scanner With QR Generation', style: boldTextStyle(size: 24)).center(),
          ),
        );
      },
    );
  }
}

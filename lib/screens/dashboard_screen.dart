// Flutter Imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Package Imports:
import 'package:nb_utils/nb_utils.dart';
import 'package:qr/controller/dashboard/dashboard_controller.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        'Dashboard',
        showBack: Navigator.canPop(context),
        textColor: white,
        textSize: 20,
        center: true,
        color: Colors.blueGrey,
      ),
      body: GetBuilder<DashboardController>(
        init: DashboardController(),
        builder: (controller) {
          return AnimatedScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            children: [
              AppButton(
                text: 'Scan the Code',
                color: Colors.blueGrey,
                textColor: white,
                width: Get.width,
                onTap: controller.scanCode,
              ),
              16.height,
              Row(
                children: [
                  Text('Scan value:', style: primaryTextStyle(size: 18)),
                  8.width,
                  Text(
                    'Scan value: ${controller.scanValue ?? "Currently haven't scanned code"}',
                    style: boldTextStyle(size: 18),
                  ).expand(),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

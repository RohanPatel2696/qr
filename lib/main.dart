// Flutter Imports:
import 'package:flutter/material.dart';

// Package Imports:
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

// Project Imports:
import 'package:qr/controller/export_screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'QR',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorKey: navigatorKey,
      home: const SplashScreen(),
    );
  }
}

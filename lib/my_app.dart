import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:untitled/presentation/screens/home_screen.dart';
import 'package:untitled/presentation/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: const SplashScreen(),
    );
  }
}

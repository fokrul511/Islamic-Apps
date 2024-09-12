import 'package:flutter/material.dart';
import 'package:untitled/presentation/screens/home_screen.dart';
import 'package:untitled/presentation/utility/apps_colors.dart';
import 'package:untitled/presentation/utility/assets_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Spacer(
            flex: 5,
          ),
          Center(
            child: Image(
              image: AssetImage(AssetsPath.logo),
              width: 250,
            ),
          ),
          Spacer(
            flex: 5,
          ),
          // Center(
          //   child: CircularProgressIndicator(
          //     color: Colors.white,
          //     // backgroundColor: AppColors.primaryColor,
          //   ),
          // ),
          // Spacer(
          //   flex: 1,
          // ),
        ],
      ),
    );
  }
}

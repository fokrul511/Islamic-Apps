import 'package:flutter/material.dart';
import 'package:untitled/presentation/utility/apps_colors.dart';
import 'package:untitled/presentation/utility/assets_path.dart';

class UnderDevelopment extends StatelessWidget {
  const UnderDevelopment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(AssetsPath.underdevelopmentImage),
            ),
            Text(
              "This page is now under development",
              style: TextStyle(
                fontSize: 18,
                color: AppColors.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}

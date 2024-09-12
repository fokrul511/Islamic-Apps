import 'package:flutter/material.dart';
import 'package:untitled/presentation/utility/apps_colors.dart';
import 'package:untitled/presentation/utility/assets_path.dart';

class UnderBotomNavbarScreen extends StatelessWidget {
  const UnderBotomNavbarScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(AssetsPath.underdevelopmentImage),
              width: 300,
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:untitled/presentation/utility/apps_colors.dart';

class QuranCard extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback? onTap;

  const QuranCard({
    super.key,
    required this.title,
    required this.iconData,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.r), // Responsive radius
        ),
      ),
      elevation: 3,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 12.sp, // Responsive font size
          ),
        ),
        leading: Icon(
          iconData,
          color: AppColors.primaryColor,
          size: 24.sp, // Responsive icon size
        ),
        onTap: onTap,
      ),
    );
  }
}

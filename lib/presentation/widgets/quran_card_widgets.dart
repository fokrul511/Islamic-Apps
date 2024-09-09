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
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.r), // Responsive radius
          ),
        ),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                iconData,
                color: AppColors.primaryColor,
                size: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

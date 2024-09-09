import 'package:flutter/material.dart';
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

      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      elevation: 3,
      child: ListTile(

        title: Text(
          title,
          style: const TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 16
          ),
        ),
        leading: Icon(
          iconData,
          color: AppColors.primaryColor,

        ),
        onTap: onTap,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gymapp/core/theme/app_theme.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      title: Text(
        "FITNESS ELITE",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
      ),

      actions: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withValues(alpha: 0.1),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_sharp, color: AppColors.textPrimary),
          ),
        ),
        SizedBox(width: 10,),
      ],
      shadowColor: AppColors.primary,
      elevation: 1,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

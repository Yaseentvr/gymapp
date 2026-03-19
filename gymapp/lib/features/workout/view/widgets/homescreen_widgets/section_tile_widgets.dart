import 'package:flutter/material.dart';
import 'package:gymapp/core/theme/app_theme.dart';

class SectionTileWidgets extends StatelessWidget {
  final String title;
  const SectionTileWidgets({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        );
  }
}
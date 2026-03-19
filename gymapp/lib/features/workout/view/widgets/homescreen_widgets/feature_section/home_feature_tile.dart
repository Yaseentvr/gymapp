import 'package:flutter/material.dart';
import 'package:gymapp/core/theme/app_theme.dart';
import 'package:gymapp/features/workout/view/widgets/homescreen_widgets/feature_section/home_feature_card.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Our Services',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimary,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'View All',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        HomeFeatureCard(),
      ],
    );
  }
}

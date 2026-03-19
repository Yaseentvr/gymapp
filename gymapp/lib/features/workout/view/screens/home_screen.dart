import 'package:flutter/material.dart';
import 'package:gymapp/core/theme/app_theme.dart';
import 'package:gymapp/features/workout/view/widgets/homescreen_widgets/appbar/home_appbar.dart';
import 'package:gymapp/features/workout/view/widgets/homescreen_widgets/feature_section/home_feature_tile.dart';
import 'package:gymapp/features/workout/view/widgets/homescreen_widgets/home_herosection.dart';
import 'package:gymapp/features/workout/view/widgets/homescreen_widgets/membership_section/membership_section.dart';
import 'package:gymapp/features/workout/view/widgets/homescreen_widgets/trainer_section/home_trainers_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            HomeHerosection(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
              child: SectionTile(),
            ),
            SizedBox(height: 10),
            HomeTrainersSection(),
            SizedBox(height: 20,),
            MembershipSection(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gymapp/core/theme/app_theme.dart';
import 'package:gymapp/features/workout/view/widgets/home_appbar.dart';
import 'package:gymapp/features/workout/view/widgets/home_herosection.dart';

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
            SizedBox(height: 10,),
            HomeHerosection()
          ],
        ),
      ),
    );
  }
}
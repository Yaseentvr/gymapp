import 'package:flutter/material.dart';
import 'package:gymapp/features/workout/view/widgets/homescreen_widgets/feature_section/service_card.dart';

class HomeFeatureCard extends StatefulWidget {
  const HomeFeatureCard({super.key});

  @override
  State<HomeFeatureCard> createState() => _HomeFeatureCardState();
}

class _HomeFeatureCardState extends State<HomeFeatureCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ServiceCard(
            icon: Icons.fitness_center,
            title: 'Expert Trainers',
            subtitle: 'Guided by pros',
          ),
          SizedBox(width: 15),
          ServiceCard(
            icon: Icons.calendar_month,
            title: "Custom Plans",
            subtitle: "Built for you",
          ),
          SizedBox(width: 15),
          ServiceCard(
            icon: Icons.calendar_month,
            title: "Diet Plans",
            subtitle: "Nutrition plans for better results",
          ),
          SizedBox(width: 15),
          ServiceCard(
            icon: Icons.calendar_month,
            title: "Progress Tracking",
            subtitle: "Monitor your fitness journey",
          ),
          SizedBox(width: 15),
          ServiceCard(
            icon: Icons.calendar_month,
            title: "Workout Library",
            subtitle: "BExplore exercises and tutorials",
          ),
          SizedBox(width: 15),
          ServiceCard(
            icon: Icons.calendar_month,
            title: "Community Support",
            subtitle: "Stay motivated with others",
          ),
          SizedBox(width: 15),
          ServiceCard(
            icon: Icons.calendar_month,
            title: "Daily Challenges",
            subtitle: "Push your limits every day",
          ),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}

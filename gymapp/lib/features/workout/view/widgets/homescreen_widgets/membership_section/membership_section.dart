import 'package:flutter/material.dart';
import 'package:gymapp/features/workout/view/widgets/homescreen_widgets/membership_section/membership_card_widget.dart';

class MembershipSection extends StatelessWidget {
  const MembershipSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
  children: [

    MembershipCardWidget(
      title: 'Basic',
      price: '19',
      subtitle: 'Essential tools for beginners',
      features: [
        'Unlimited gym access',
        'Basic workout library'
      ],
      highlight: false,
      buttonText: 'Choose Basic',
    ),

    const SizedBox(height: 16),

    Stack(
      children: [
        MembershipCardWidget(
          title: 'Pro',
          price: '49',
          subtitle: 'Most popular for athletes',
          features: [
            "Everything in Basic",
            "Personalized diet plans",
            "Monthly trainer check-ins",
          ],
          highlight: true,
          buttonText: 'Get Pro Access',
        ),

        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 4,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFF00E5C2),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: const Text(
              "BEST VALUE",
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),

    const SizedBox(height: 16),

    MembershipCardWidget(
      title: 'Elite',
      price: '99',
      subtitle: 'The ultimate performance package',
      features: [
        '24/7 Priority Support',
        'Private Training sessions'
      ],
      highlight: false,
      buttonText: 'Choose Elite',
    ),
  ],
)
    );
  }
}

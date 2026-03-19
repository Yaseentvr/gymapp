import 'package:flutter/material.dart';
import 'package:gymapp/core/theme/app_theme.dart';

class MembershipCardWidget extends StatelessWidget {
  final String title;
  final String price;
  final String subtitle;
  final List<String> features;
  final String buttonText;
  final bool highlight;

  const MembershipCardWidget({
    super.key,
    required this.title,
    required this.price,
    required this.subtitle,
    required this.features,
    required this.buttonText,
    this.highlight = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: highlight ? const Color(0xFF0D2F2C) : Color(0xFF151A21),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: highlight ? const Color(0xFF00E5C2) : Colors.transparent,
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              Text(
                "\$$price/mo",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 13),
          Column(
            children: features.map((features) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    const Icon(
                      Icons.check_circle,
                      color: Color(0xFF00E5C2),
                      size: 18,
                    ),
                    const SizedBox(width: 8),
                    Text(features, style: TextStyle(color: Colors.white70)),
                  ],
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 16),

          SizedBox(
            width: double.infinity,
            height: 44,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: highlight
                    ? const Color(0xFF00E5C2)
                    : Colors.transparent,
                side: highlight
                    ? BorderSide.none
                    : const BorderSide(color: Color(0xFF00E5C2)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Text(
                buttonText,
                style: TextStyle(
                  color: highlight ? Colors.black : const Color(0xFF00E5C2),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

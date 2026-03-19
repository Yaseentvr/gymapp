import 'package:flutter/material.dart';

class TrainerCard extends StatelessWidget {
  final String image;
  final String name;
  final String role;

  const TrainerCard({
    super.key,
    required this.image,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        width: 80,
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.teal, width: 3),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),       ),
            SizedBox(height: 5,),
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              role,
              style: const TextStyle(color: Colors.cyan, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

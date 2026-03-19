import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
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
        child: Text('BEST VALUE',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
      )
      );
  }
}

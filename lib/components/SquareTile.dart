import 'package:flutter/material.dart';

class Squaretile extends StatelessWidget {
  final String imagePath;

  const Squaretile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[100],
      ),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}

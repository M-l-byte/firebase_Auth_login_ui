import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final String imagePath;
  const GoogleButton({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(
        imagePath,
        height: 50,
      ),
    );
  }
}

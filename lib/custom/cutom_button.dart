import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xC0E0E0E0),
          minimumSize: const Size(double.infinity, 60)),
      child: Text(
        text,
        style: const TextStyle(
            color: Color.fromARGB(255, 163, 153, 153),
            fontWeight: FontWeight.bold,
            fontSize: 16),
      ),
    );
  }
}

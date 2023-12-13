import 'package:flutter/material.dart';

class MediaIcons extends StatelessWidget {
  const MediaIcons({
    super.key,
    required this.icon,
    this.filled = false,
  });

  final bool filled;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: filled ? Colors.blue : Colors.white,
          border: Border.all(color: filled ? Colors.blue : Colors.grey),
        ),
        child: Icon(icon, color: filled ? Colors.white : Colors.grey),
      ),
    );
  }
}

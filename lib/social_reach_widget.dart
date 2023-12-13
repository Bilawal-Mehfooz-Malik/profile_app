import 'package:flutter/material.dart';

class SocialReachWidget extends StatelessWidget {
  const SocialReachWidget({super.key, required this.text});
  final List<String> text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text[0],
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Text(
          text[1],
          style: const TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ],
    );
  }
}

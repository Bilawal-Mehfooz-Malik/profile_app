import 'package:flutter/material.dart';

class FollowersPicStructure extends StatelessWidget {
  const FollowersPicStructure(
      {super.key, required this.url, required this.positionValue});
  final String url;
  final double positionValue;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: positionValue,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.white, width: 2),
        ),
        width: 50,
        height: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(url, fit: BoxFit.cover),
        ),
      ),
    );
  }
}

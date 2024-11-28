import 'package:flutter/material.dart';

class BottomBarIconItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const BottomBarIconItem({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(text),
      ],
    );
  }
}

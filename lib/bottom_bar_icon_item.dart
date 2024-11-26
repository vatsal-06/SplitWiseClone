import 'package:flutter/material.dart';

class BottomBarIconItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final VoidCallback onTap;
  const BottomBarIconItem({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: 30,
        color: iconColor,
      ),
      onPressed: onTap,
    );
  }
}

import 'package:flutter/material.dart';

class FriendsItem extends StatelessWidget {
  final Icon icon;
  final String name;
  final String expense;
  const FriendsItem({
    super.key,
    required this.icon,
    required this.name,
    required this.expense,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton.icon(
          onPressed: () {
            print('Friend $name tapped');
          },
          label: Text(
            name,
            style: const TextStyle(fontSize: 18),
          ),
          icon: icon,
          style: TextButton.styleFrom(
            iconColor: Colors.black,
            maximumSize: const Size((double.infinity), 50),
          ),
        ),

        Text(
          expense,
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}

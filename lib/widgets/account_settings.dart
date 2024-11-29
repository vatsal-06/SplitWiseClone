import 'package:flutter/material.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Account Settings', style: TextStyle(fontSize: 20),),
      ),

      body: const Column(
        children: [
          Row(
            children: [
              Icon(Icons.person),
              Text('Vatsal Gupta'),
            ],
          )
        ],
      ),
    );
  }
}
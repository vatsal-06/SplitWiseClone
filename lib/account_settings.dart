import 'package:flutter/material.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Account Settings', style: TextStyle(fontSize: 20),),
      ),

      body: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.person),
              const Text('Vatsal Gupta'),
            ],
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:splitwise/global_variables.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            print("Search icon pressed");
          },
          icon: const Icon(Icons.search, size: 25),
        ),
      ),

      body: Container(
        margin: const EdgeInsets.all(12),
        child: Column(
          children: [
          const Text('Account', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
          const SizedBox(height: 30),
          const Text('Settings',),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.person),
              const SizedBox(width: 10),
              Text('Jake', style: Theme.of(context).textTheme.titleMedium),
            ],
          )
        ],),
      ),
    );
  }
}

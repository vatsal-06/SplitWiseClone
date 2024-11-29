import 'package:flutter/material.dart';

class FriendsSettingsPage extends StatelessWidget {
  final Map<String, dynamic> people;
  const FriendsSettingsPage({
    super.key,
    required this.people,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Friend Settings', style: Theme.of(context).textTheme.titleMedium,),
      ),

      body: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.person),
              Text(people['name'] as String, style: Theme.of(context).textTheme.titleMedium),
            ],
          )
        ],
      ),
    );
  }
}

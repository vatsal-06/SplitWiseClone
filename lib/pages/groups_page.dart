import 'package:flutter/material.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({super.key});

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  final Map<String, dynamic> groups = {
    'groupName': 'My Group'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.search),
          iconSize: 25,
          onPressed: () {
            print("Search icon pressed");
          },
        ),
        actions: [
          TextButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const GroupsSplitwiseMaterialPage()));
                print('Create Group button pressed');
              },
              child: const Text(
                'Create Group',
                style: TextStyle(color: Colors.green, fontSize: 14),
              )),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'You are all settled Up!',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(
                  icon: const Icon(Icons.density_medium_sharp),
                  onPressed: () {
                    print("Filter icon pressed");
                  },
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.home, color: Theme.of(context).colorScheme.primary, size: 40,),
                Text(groups['groupName'] as String)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
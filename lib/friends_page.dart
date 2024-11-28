import 'package:flutter/material.dart';
import 'friends_item.dart';
import 'people_list.dart';
import 'friends_details_page.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
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
                print('Add Friends button pressed');
              },
              child: const Text(
                'Add Friends',
                style: TextStyle(color: Colors.green, fontSize: 14),
              )),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
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

            const SizedBox(
              height: 10,
            ),
      
            Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    FriendsDetailsPage(people: people[index])));
                      },
                      child: FriendsItem(
                        name: people[index]['name'] as String,
                        expense: people[index]['expense'] as String,
                      ),
                    );
                  }
                  ),
            ),
      
            const SizedBox(
              height: 10,
            ),
      
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(250, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                print('Add Friends button pressed');
              }, 
              child: const Row(
                children: [
                  Icon(Icons.person_add_sharp),
                  SizedBox(width: 8),
                  Text('Add Friends'),
                ],
              )
              )
          ],
        ),
      ),
    );
  }
}

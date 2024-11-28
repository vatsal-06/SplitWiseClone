import 'package:flutter/material.dart';
import 'friends_item.dart';
import 'bottom_icon.dart';
import 'people_list.dart';
import 'friends_details_page.dart';

class FriendsSplitWiseMaterialPage extends StatefulWidget {
  const FriendsSplitWiseMaterialPage({super.key});

  @override
  State<FriendsSplitWiseMaterialPage> createState() =>
      _FriendsSplitWiseMaterialPageState();
}

class _FriendsSplitWiseMaterialPageState
    extends State<FriendsSplitWiseMaterialPage> {
  @override
  void dispose() {
    super.dispose();
  }

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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Overall, you owe \$1000',
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
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print('Bottom bar icon pressed');
              },
              child: const BottomBarIconItem(
                icon: Icons.home,
                text: 'Home',
              ),
            );
          },
          itemCount: 5,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:splitwise/groups_splitwise_material_page.dart';
import 'friends_item.dart';
import 'bottom_bar_icon_item.dart';

class FriendsSplitWiseMaterialPage extends StatefulWidget {
  const FriendsSplitWiseMaterialPage({super.key});

  @override
  State<FriendsSplitWiseMaterialPage> createState() =>
      _FriendsSplitWiseMaterialPageState();

}

class _FriendsSplitWiseMaterialPageState extends State<FriendsSplitWiseMaterialPage> {
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const GroupsSplitwiseMaterialPage()));
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
                  'You are all setteld up!',
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
            const FriendsItem(
                name: 'John Doe',
                icon: Icon(Icons.person),
                expense: 'You owe \$100'),
            const FriendsItem(
                name: 'Jane Doe',
                icon: Icon(Icons.person),
                expense: 'You owe \$200'),
            const FriendsItem(
                name: 'John Smith',
                icon: Icon(Icons.person),
                expense: 'You owe \$300'),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // BottomBarIconItem(icon: Icons.person, iconColor: Colors.green, navigator: Navigator.pop(context),),
            BottomBarIconItem(
              icon: Icons.people_outline,
              iconColor: Colors.grey,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GroupsSplitwiseMaterialPage(),));
              },
            ),
            // BottomBarIconItem(icon: Icons.add_box, iconColor: Colors.green),
            // BottomBarIconItem(icon: Icons.auto_graph, iconColor: Colors.grey),
            // BottomBarIconItem(icon: Icons.account_circle_outlined, iconColor: Colors.grey),
          ],
        ),
      ),
    );
  }
}




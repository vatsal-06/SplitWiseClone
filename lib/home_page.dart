import 'package:flutter/material.dart';
import 'package:splitwise/account_page.dart';
import 'package:splitwise/activity_page.dart';
import 'package:splitwise/add_page.dart';
import 'package:splitwise/friends_page.dart';
import 'package:splitwise/groups_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  List<Widget> pages = const [
    FriendsPage(),
    GroupsPage(),
    AddPage(),
    ActivityPage(),
    AccountPage()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          currentIndex: currentPage,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.person, size: 25), label: 'Friends'),
            const BottomNavigationBarItem(icon: Icon(Icons.people, size: 25), label: 'Groups'),
            BottomNavigationBarItem(icon: Icon(Icons.add_box, size: 50, color: Theme.of(context).colorScheme.primary,), label: ''),
            const BottomNavigationBarItem(icon: Icon(Icons.auto_graph_rounded, size: 25), label: 'Activity'),
            const BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded, size: 25), label: 'Settings'),
          ]),

      body: IndexedStack(
        index: currentPage,
        children: pages,
      ),
    );
  }
}
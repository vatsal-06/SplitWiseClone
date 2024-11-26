import 'package:flutter/material.dart';
import 'friends_splitwise_material_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FriendsSplitWiseMaterialPage(),
    );
  }
}

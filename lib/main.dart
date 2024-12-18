import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 28,),
          titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
          titleSmall: TextStyle(fontSize: 14,)
        ).apply(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(28, 139, 113, 1),
          primary: const Color.fromRGBO(99, 199, 178, 1),
          ),
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
        ),
        useMaterial3: true,
      ),
    );
  }
}

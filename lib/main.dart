import 'package:flutter/material.dart';
import 'package:open_mart/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenMart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true).copyWith(
        primaryColor: Colors.green,
      ),
      home: const HomeScreen(),
    );
  }
}

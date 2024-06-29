import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('OpenMart'),
        ),
        actions: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 25,
                  child: IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(
                width: 55,
                child: Align(
                  alignment: Alignment(1, -0.85),
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 9,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

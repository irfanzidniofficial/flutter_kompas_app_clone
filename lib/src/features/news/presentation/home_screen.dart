import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 20,
            ),
            label: 'Hari ini',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.save,
              size: 20,
            ),
            label: 'Hari ini',
          ),
        ],
      ),
    );
  }
}

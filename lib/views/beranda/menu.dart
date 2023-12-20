import 'package:flutter/material.dart';
import 'package:sipres/views/beranda/hasil.dart';
import 'package:sipres/views/beranda/home.dart';
import 'package:sipres/views/beranda/profile.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key});

  @override
  State<Menu> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<Menu> {
  final List<Widget> _pages = [Homepage(),hasil(),Profile()];
  int currentIndex = 0;

  void onTapMenu(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTapMenu,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Result',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

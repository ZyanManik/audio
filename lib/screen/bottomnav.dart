import 'package:audio/page/music.dart';
import 'package:audio/page/settings.dart';
import 'package:audio/screen/carousal.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Carousal(),
    Music(),
    Settings()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 25, 25),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35)),
          color: Color.fromARGB(255, 1, 0, 0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 16),
          child: GNav(
            backgroundColor: const Color.fromARGB(255, 1, 0, 0),
            color: Colors.white10,
            activeColor: Colors.white,
            tabBackgroundColor: const Color.fromARGB(248, 47, 43, 43),
            padding: const EdgeInsets.all(6),
            onTabChange: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            tabs: const [
              GButton(
                gap: 8,
                icon: Icons.home_max_outlined,
                text: 'Home',
                textColor: Colors.white,
              ),
              GButton(
                gap: 8,
                icon: Icons.music_note_outlined,
                text: 'Music',
                textColor: Colors.white,
              ),
              GButton(
                gap: 8,
                icon: Icons.settings,
                text: 'Settings',
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

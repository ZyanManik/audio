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

  // ignore: unused_element
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 103, 102, 102),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(25)),
          color: Color.fromARGB(255, 15, 14, 14),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: GNav(
            backgroundColor: const Color.fromARGB(255, 15, 14, 14),
            color: Colors.white,
            activeColor: const Color.fromARGB(255, 255, 17, 1),
            tabBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
            padding: const EdgeInsets.all(6),
            onTabChange: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            tabs: const [
              GButton(
                gap: 6,
                icon: Icons.home_max_outlined,
                iconSize: 25,
                text: 'Home',
                textColor: Colors.white,
                textSize: 13,
              ),
              GButton(
                gap: 6,
                iconSize: 25,
                icon: Icons.audio_file_outlined,
                text: 'Audio',
                textColor: Colors.white,
                textSize: 13,
              ),
              GButton(
                gap: 6,
                iconSize: 25,
                icon: Icons.settings,
                text: 'Settings',
                textColor: Colors.white,
                textSize: 13,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

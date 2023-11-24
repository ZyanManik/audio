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
      backgroundColor: const Color.fromARGB(255, 225, 150, 122) ,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color:  const Color.fromARGB(255, 225, 150, 122),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12),
          child: Container(
            color: const Color.fromARGB(255, 225, 150, 122),
            child: GNav(
              backgroundColor:   const Color.fromARGB(255, 225, 150, 122),
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor:  Color.fromARGB(255, 180, 114, 90),
              padding: const EdgeInsets.all(10),
              onTabChange: (value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
              tabs: const [
                GButton(
                  //rippleColor: Color.fromARGB(255, 255, 17, 1),
                  //hoverColor: Color.fromARGB(255, 255, 17, 1),
                  gap: 8,
                  icon: Icons.home,
                  iconSize: 25,
                  text: 'Home',
                  textColor: Colors.white,
                  textSize: 18,
                ),
                GButton(
                  //rippleColor: Color.fromARGB(255, 255, 17, 1),
                  //hoverColor: Color.fromARGB(255, 255, 17, 1),
                  gap: 8,
                  iconSize: 25,
                  icon: Icons.audio_file_outlined,
                  text: 'Audio',
                  textColor: Colors.white,
                  textSize: 18,
                ),
                GButton(
                  // rippleColor: Color.fromARGB(255, 255, 17, 1),
                  // hoverColor: Color.fromARGB(255, 255, 17, 1),
                  gap: 8,
                  iconSize: 25,
                  icon: Icons.settings,
                  text: 'Settings',
                  textColor: Colors.white,
                  textSize: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

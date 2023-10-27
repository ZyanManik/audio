import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 25, 25),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 81, 6).withOpacity(0.3),
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 35,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

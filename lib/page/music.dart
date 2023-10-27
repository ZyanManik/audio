import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 25, 25),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 81, 6).withOpacity(0.3),
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Music',
          style: TextStyle(
            fontSize: 35,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}

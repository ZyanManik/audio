import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 29, 29),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 35, 60, 80),
        elevation: 0.0,
        title: const Row(
          children: [
            // Text(
            //   'Musical',
            //   style: TextStyle(color: Colors.white, fontSize: 20),
            // ),
            // Text(
            //   '_Pad',
            //   style: TextStyle(
            //       color: Color.fromARGB(255, 255, 17, 1), fontSize: 20),
            // ),
          ],
        ),
      ),
    );
  }
}

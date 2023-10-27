import 'package:audio/screen/splash_background.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/1.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
          ),
          Container(
            color: const Color.fromARGB(197, 5, 6, 16).withOpacity(0.7),
          ),
          SplashBackground(screenHeight: MediaQuery.of(context).size.height),
          Positioned(
            left: 100.0,
            right: 100.0,
            top: 150.0,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.black,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 9,
                    spreadRadius: 5,
                    color: Color.fromARGB(255, 9, 82, 226),
                  ),
                ],
              ),
              child: const Icon(
                Icons.ac_unit,
                color: Color.fromARGB(255, 16, 191, 222),
                size: 80,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

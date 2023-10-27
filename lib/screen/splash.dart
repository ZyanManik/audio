import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Stack(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 57, 14, 3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(200),
                  bottomLeft: Radius.circular(200),
                ),
                boxShadow: [
                  BoxShadow(blurRadius: 4, spreadRadius: 6, color: Colors.white)
                ]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("images/2.jpg"), fit: BoxFit.cover),
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(80),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 9, spreadRadius: 8, color: Colors.black)
                    ],
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

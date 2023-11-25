import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/mirror_animation_builder.dart';
//import 'package:simple_animations/animation_builder/play_animation_builder.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 60, 80),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // PlayAnimationBuilder(
              //   child:
              // ),

              //   PlayAnimationBuilder<double>(
              //     tween: Tween(begin: 100.0, end: 200.0),
              //     duration: const Duration(seconds: 2),
              //     delay: const Duration(seconds: 1),
              //     curve: Curves.linear,
              //     builder: (context, value, child) {
              //       return Container(
              //         width: value,
              //         height: 100.0,
              //         decoration: BoxDecoration(
              //             color: Colors.amber,
              //             borderRadius: BorderRadius.circular(30)),
              //       );
              //     },
              //
              MirrorAnimationBuilder<double>(
                tween: Tween(
                    begin: -30.0, end: 30.0), // value for offset x-coordinate
                duration: const Duration(seconds: 2),
                curve: Curves.easeInCubic, // non-linear animation
                builder: (context, value, child) {
                  return Transform.translate(
                    offset:
                        Offset(value, 0), // use animated value for x-coordinate
                    child: child,
                  );
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: const DecorationImage(
                        image: AssetImage("images/name.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

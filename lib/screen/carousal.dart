import 'package:audio/widgets.dart/drum1.dart';
import 'package:audio/widgets.dart/drum2.dart';
import 'package:audio/widgets.dart/drum3.dart';
import 'package:audio/widgets.dart/drum4.dart';
import 'package:audio/widgets.dart/drum5.dart';
import 'package:audio/widgets.dart/drum6.dart';
import 'package:audio/widgets.dart/drum7.dart';
import 'package:audio/widgets.dart/drum8.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousal extends StatefulWidget {
  const Carousal({super.key});

  @override
  State<Carousal> createState() => _CarousalState();
}

class _CarousalState extends State<Carousal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 25, 25),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 81, 6).withOpacity(0.3),
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 35,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              CarouselSlider(
                items: [
                  GestureDetector(
                    child: const ContainerDesign(
                      contanierclr: Colors.amber,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Drum1(),
                          ));
                    },
                  ),
                  GestureDetector(
                    child: const ContainerDesign(
                      contanierclr: Colors.blue,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Drum2(),
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    child: const ContainerDesign(
                      contanierclr: Colors.red,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Drum3(),
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    child: const ContainerDesign(
                      contanierclr: Colors.indigo,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Drum4(),
                          ));
                    },
                  ),
                  GestureDetector(
                    child: const ContainerDesign(
                      contanierclr: Colors.cyanAccent,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Drum5(),
                          ));
                    },
                  ),
                  GestureDetector(
                    child: const ContainerDesign(
                      contanierclr: Colors.purple,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Drum6(),
                          ));
                    },
                  ),
                  GestureDetector(
                    child: const ContainerDesign(
                      contanierclr: Colors.grey,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Drum7(),
                          ));
                    },
                  ),
                  GestureDetector(
                    child: const ContainerDesign(
                      contanierclr: Colors.brown,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Drum8(),
                          ));
                    },
                  ),
                ],
                options: CarouselOptions(
                  height: 400.0,
                  enlargeCenterPage: true,
                  autoPlay: false,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContainerDesign extends StatefulWidget {
  final Color contanierclr;
  const ContainerDesign({super.key, required this.contanierclr});
  @override
  State<ContainerDesign> createState() => _ContainerDesignState();
}

class _ContainerDesignState extends State<ContainerDesign> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 80,
      width: width,
      decoration: BoxDecoration(
        color: widget.contanierclr,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

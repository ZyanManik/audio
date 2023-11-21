//import 'package:audio/widgets.dart/drum1.dart';
// import 'package:audio/widgets.dart/drum2.dart';
// import 'package:audio/widgets.dart/drum3.dart';
// import 'package:audio/widgets.dart/drum4.dart';
// import 'package:audio/widgets.dart/drum5.dart';

//import 'package:audio/widgets.dart/drum1.dart';
import 'package:audio/widgets.dart/drum1.dart';
import 'package:audio/widgets.dart/drum2.dart';
import 'package:audio/widgets.dart/drum3.dart';
import 'package:audio/widgets.dart/drum4.dart';
import 'package:audio/widgets.dart/drum5.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carousal extends StatefulWidget {
  const Carousal({super.key});

  @override
  State<Carousal> createState() => _CarousalState();
}

class _CarousalState extends State<Carousal> {
  int currentindex = 0;
  // List cont = [

  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 103, 102, 102),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 74, 73, 73),
        title: const Row(
          children: [
            Text(
              'Musical',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              '_Pad',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 17, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 120,
          ),
          CarouselSlider(
            items: [
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    image: const DecorationImage(
                        image: AssetImage("images/1.png"), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20),
                  ),
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
                child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    image: const DecorationImage(
                        image: AssetImage("images/2.png"), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Drum2(),
                      ));
                },
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    image: const DecorationImage(
                        image: AssetImage("images/tabla.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Drum3(),
                      ));
                },
              ),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    image: const DecorationImage(
                        image: AssetImage("images/4.png"), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Drum4(),
                      ));
                },
              ),
              GestureDetector(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Drum5(),
                      ));
                },
              ),
            ],
            options: CarouselOptions(
              autoPlayCurve: Curves.fastOutSlowIn,
              height: 300.0,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayInterval: const Duration(seconds: 2),
              enlargeCenterPage: true,
              aspectRatio: 5.0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentindex = index;
                });
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          AnimatedSmoothIndicator(
            activeIndex: currentindex,
            count: 5,
            curve: Curves.easeInOut,
            effect: const WormEffect(
              dotColor: Colors.white,
              activeDotColor: Color.fromARGB(255, 255, 17, 1),
              radius: 10,
            ),
          ),
        ],
      ),
    );
  }
}

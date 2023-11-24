import 'package:audio/widgets.dart/drum1.dart';
import 'package:audio/widgets.dart/drum2.dart';
import 'package:audio/widgets.dart/drum3.dart';
import 'package:audio/widgets.dart/drum4.dart';
import 'package:audio/widgets.dart/drum5.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carousal extends StatefulWidget {
  const Carousal({super.key});

  @override
  State<Carousal> createState() => _CarousalState();
}

class _CarousalState extends State<Carousal> {
  int currentindex = 0;
  List cont = [
    {
      "txt":
          "The drum is a member of the percussion group of musical instruments. In the Hornbostel-Sachs classification system, it is a membranophone. Drums consist of at least one membrane, called a drumhead or drum skin, that is stretched over a shell and struck, either directly with the player's hands, or with a percussion mallet, to produce sound. There is usually a resonant head on the underside of the drum.Drums are the world's oldest and most ubiquitous musical instruments, and the basic design has remained virtually unchanged for thousands of years."
    },
    {
      "txt":
          "A tabla is a pair of hand drums from the Indian subcontinent, that is somewhat similar in shape to the bongos. Since the 18th century, it has been the principal percussion instrument in Hindustani classical music, where it may be played solo, as an accompaniment with other instruments and vocals, and as a part of larger ensembles. It is frequently played in popular and folk music performances in India, Bangladesh, Afghanistan, Pakistan, Nepal and Sri Lanka. Tabla is a rhythmic instrument. The name tabla likely comes from tabl, the Arabic word for drum."
    },
    {"txt": ""},
    {"txt": ""},
    {"txt": ""},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 206, 195),
      appBar: AppBar(
        // systemOverlayStyle: const SystemUiOverlayStyle(
        //   statusBarColor: Color.fromARGB(255, 12, 21, 28),
        //   systemNavigationBarColor: Colors.amber,
        // ),
        // toolbarHeight: 65.0,
        title: const Column(
          children: [
            SizedBox(height: 10,),
            Center(
              child: Text("Simply Drums",style: TextStyle(
                fontFamily: 'Beach',
                fontSize: 50
              ),),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 186, 137, 141),
        //  Color.fromARGB(255, 204, 166, 152),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/back2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            // child: ListView(
            //   children: [
            //     Container(
            //       height: 70,
            //       width: 70,
            //     ),
            //   ],
            // ),
          ),
          Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              CarouselSlider(
                items: [
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        image: const DecorationImage(
                            image: AssetImage("images/simpledrum.png"),
                            fit: BoxFit.fill),
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
                            image: AssetImage("images/alternate2.png"),
                            fit: BoxFit.fill),
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
                            image: AssetImage("images/4.png"),
                            fit: BoxFit.fill),
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
                  height: 350.0,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  aspectRatio: 5.0,
                  onPageChanged: (index, reason) {
                    setState(
                      () {
                        currentindex = index;
                      },
                    );
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
                  activeDotColor: Color.fromARGB(255, 246, 166, 166),
                  radius: 10,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: SingleChildScrollView(
                  child: ReadMoreText(
                    cont[currentindex]["txt"],
                    style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    textAlign: TextAlign.justify,
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

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:audio/widgets.dart/drumkit.dart';
import 'package:audio/widgets.dart/tabla.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widgets.dart/drum3.dart';

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
      appBar: AppBar(
        toolbarHeight: 65.0,
        title: const Row(
          children: [
            Text(
              'Musical',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            Text(
              '_Pad',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'greatvibes'),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 35, 60, 80),
        actions: [
          Switch(
            value: AdaptiveTheme.of(context).mode.isDark,
            onChanged: (value) {
              if (value) {
                AdaptiveTheme.of(context).setDark();
              } else {
                AdaptiveTheme.of(context).setLight();
              }
            },
          ),
        ],
      ),
      body: Stack(
        children: [
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
                            image: AssetImage("assets/den.jpg"),
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
                            image: AssetImage("assets/jon.jpg"),
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
                            image: AssetImage("3.png"), fit: BoxFit.fill),
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
                count: 3,
                curve: Curves.easeInOut,
                effect: const WormEffect(
                  dotColor: Colors.white,
                  activeDotColor: Colors.blue,
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

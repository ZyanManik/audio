import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Tabla extends StatefulWidget {
  Tabla({super.key});

  @override
  State<Tabla> createState() => _TablaState();
}

class _TablaState extends State<Tabla> {
  bool isclicked = false;

  List record = [];

  List clrlist = [
    {
      "color": const RadialGradient(
        radius: 3.0,
        center: Alignment.center,
        colors: [
          Color.fromARGB(255, 133, 2, 255),
          Color.fromARGB(255, 53, 2, 63),
          Colors.black,
          Colors.purple,
          Colors.deepPurple
        ],
      ),
      "image": const AssetImage('assets/tabla.png')
    },
    {
      "color": const RadialGradient(
        radius: 3.0,
        center: Alignment.center,
        colors: [
          Color.fromARGB(255, 2, 133, 255),
          Color.fromARGB(255, 7, 33, 89),
          Colors.black,
          Colors.blue,
          Colors.blueAccent
        ],
      ),
      "image": const AssetImage('assets/tabla.png')
    },
    {
      "color": const RadialGradient(
        radius: 3.0,
        center: Alignment.center,
        colors: [
          Color.fromARGB(255, 2, 255, 36),
          Color.fromARGB(255, 7, 89, 63),
          Colors.black,
          Colors.green,
          Colors.greenAccent
        ],
      ),
      "image": const AssetImage('assets/tabla.png')
    },
    {
      "color": const RadialGradient(
        radius: 3.0,
        center: Alignment.center,
        colors: [
          Color.fromARGB(255, 60, 58, 203),
          Color.fromARGB(255, 27, 38, 83),
          Colors.black,
          Colors.indigo,
          Colors.indigoAccent
        ],
      ),
      "image": const AssetImage('assets/tabla.png')
    },
    {
      "color": const RadialGradient(
        radius: 3.0,
        center: Alignment.center,
        colors: [
          Color.fromARGB(255, 176, 154, 146),
          Color.fromARGB(255, 78, 68, 68),
          Colors.black,
          Colors.grey,
          Colors.blueGrey
        ],
      ),
      "image": const AssetImage('assets/tabla.png')
    },
    {
      "color": const RadialGradient(
        radius: 3.0,
        center: Alignment.center,
        colors: [
          Color.fromARGB(255, 255, 138, 4),
          Color.fromARGB(255, 134, 65, 4),
          Colors.black,
          Color.fromARGB(255, 129, 59, 5),
          Color.fromARGB(255, 135, 94, 5)
        ],
      ),
      "image": const AssetImage('assets/tabla.png')
    },
    {
      "color": const RadialGradient(
        radius: 3.0,
        center: Alignment.center,
        colors: [
          Color.fromARGB(255, 244, 12, 144),
          Color.fromARGB(255, 150, 15, 111),
          Colors.black,
          Color.fromARGB(255, 113, 9, 79),
          Color.fromARGB(255, 45, 4, 37)
        ],
      ),
      "image": const AssetImage('assets/tabla.png')
    },
    {
      "color": const RadialGradient(
        radius: 3.0,
        center: Alignment.center,
        colors: [
          Color.fromARGB(255, 182, 6, 236),
          Color.fromARGB(255, 118, 41, 138),
          Colors.black,
          Color.fromARGB(255, 64, 8, 75),
          Color.fromARGB(255, 119, 5, 123)
        ],
      ),
      "image": const AssetImage('assets/tabla.png')
    },
    {
      "color": const RadialGradient(
        radius: 3.0,
        center: Alignment.center,
        colors: [
          Color.fromARGB(255, 255, 65, 2),
          Color.fromARGB(255, 89, 7, 7),
          Colors.black,
          Colors.orange,
          Colors.deepOrangeAccent
        ],
      ),
      "image": const AssetImage('assets/t1.jpg')
    },
    {
      "color": const RadialGradient(
        radius: 3.0,
        center: Alignment.center,
        colors: [
          Color.fromARGB(255, 2, 15, 255),
          Color.fromARGB(255, 15, 4, 86),
          Colors.black,
          Colors.lightBlueAccent,
          Colors.lightBlue
        ],
      ),
      "image": const AssetImage('assets/tabla.png')
    },
    {
      "color": const RadialGradient(
        radius: 3.0,
        center: Alignment.center,
        colors: [
          Color.fromARGB(255, 62, 186, 220),
          Color.fromARGB(255, 11, 116, 126),
          Colors.black,
          Colors.cyan,
          Colors.cyanAccent
        ],
      ),
      "image": const AssetImage('assets/tabla.png')
    },
    {
      "color": const RadialGradient(
        radius: 3.0,
        center: Alignment.center,
        colors: [
          Color.fromARGB(255, 255, 234, 0),
          Color.fromARGB(255, 121, 129, 12),
          Colors.black,
          Color.fromARGB(255, 129, 139, 41),
          Color.fromARGB(255, 116, 122, 51)
        ],
      ),
      "image": const AssetImage('assets/sumo.jpg')
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          children: [
            Text(
              'Tabla',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 35, 60, 80),
        leading: InkWell(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                record.add(3);
                print(record);
                isclicked = !isclicked;
              });
            },
            icon: const Icon(Icons.circle),
            color: isclicked ? Colors.red : Colors.white,
          )
        ],
      ),
      body: GridView.builder(
        itemCount: clrlist.length,
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 20.0,
            childAspectRatio: 1.0),
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
          child: MaterialButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource("tabla${index + 1}.wav"));
            },
            splashColor: Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
            padding: const EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  // color: clrlist[index]["color"],
                  gradient: clrlist[index]["color"],
                  image: DecorationImage(
                      image: clrlist[index]["image"], fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(60)),
              child: Container(
                constraints: const BoxConstraints(
                    minWidth: 88.0,
                    minHeight: 36.0), // min sizes for Material buttons
                alignment: Alignment.center,
                child: null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

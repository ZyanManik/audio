import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Drum1 extends StatefulWidget {
  const Drum1({super.key});

  @override
  State<Drum1> createState() => _Drum1State();
}

class _Drum1State extends State<Drum1> {
  List clrlist = [
    // {
    //   "color": const RadialGradient(
    //     radius: 3.0,
    //     center: Alignment.center,
    //     colors: [
    //       Color.fromARGB(255, 255, 65, 2),
    //       Color.fromARGB(255, 89, 7, 7),
    //       Colors.black,
    //       Colors.orange,
    //       Colors.deepOrangeAccent
    //     ],
    //   ),
    // },
    {
      "color": const Color.fromARGB(255, 226, 219, 219),
    },
    {
      "color": const Color.fromARGB(255, 0, 105, 190),
    },
    {
      "color": const Color.fromARGB(255, 228, 0, 76),
    },
    {
      "color": const Color.fromARGB(255, 35, 148, 39),
    },
    {
      "color": const Color.fromARGB(255, 36, 64, 78),
    },
    {
      "color": const Color.fromARGB(255, 201, 47, 0),
    },
    {
      "color": const Color.fromARGB(255, 200, 0, 236),
    },
    {
      "color": const Color.fromARGB(255, 116, 200, 21),
    },
    {
      "color": const Color.fromARGB(255, 12, 141, 141),
    },
    {
      "color": const Color.fromARGB(255, 35, 148, 39),
    },
    {
      "color": const Color.fromARGB(255, 36, 64, 78),
    },
    {
      "color": const Color.fromARGB(255, 201, 47, 0),
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 126, 121, 121),
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          children: [
            Text(
              'Drum',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              '_1',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 17, 1),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 182, 181, 181),
        leading: InkWell(
          child: const Icon(Icons.arrow_back_ios_new),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.builder(
        itemCount: clrlist.length,
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 1.0),
        itemBuilder: (context, index) => SizedBox(
          child: MaterialButton(
            onPressed: () {},
            splashColor: Colors.red,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  color: clrlist[index]["color"],
                  //gradient: clrlist[index]['color'],
                  borderRadius: BorderRadius.circular(20)),
              child: InkWell(
                onTap: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource("drum${index+1}.wav"));
                },
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
      ),
    );
  }
}

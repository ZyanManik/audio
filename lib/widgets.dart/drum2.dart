import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Drum2 extends StatelessWidget {
  Drum2({super.key});
  List clrlist = [
    {
      "color": const Color.fromARGB(255, 197, 10, 72),
    },
    {
      "color": const Color.fromARGB(255, 9, 168, 15),
    },
    {
      "color": const Color.fromARGB(255, 33, 98, 131),
    },
    {
      "color": const Color.fromARGB(255, 221, 170, 19),
    },
    {
      "color": const Color.fromARGB(255, 209, 21, 8),
    },
    {
      "color": const Color.fromARGB(255, 12, 141, 141),
    },
    {
      "color": const Color.fromARGB(255, 7, 34, 185),
    },
    {
      "color": const Color.fromARGB(255, 18, 110, 186),
    },
    {
      "color": const Color.fromARGB(255, 101, 160, 34),
    },
    {
      "color": const Color.fromARGB(255, 143, 62, 32),
    },
    {
      "color": const Color.fromARGB(255, 185, 69, 33),
    },
    {
      "color": const Color.fromARGB(255, 110, 7, 128),
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
              '_2',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 17, 1),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 182, 181, 181),
        leading: InkWell(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.builder(
        itemCount: clrlist.length,
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 1.0),
        itemBuilder: (context, index) => SizedBox(
          child: MaterialButton(
            onPressed: () {},
            splashColor: Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  color: clrlist[index]["color"],
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource("tabla${index + 1}.wav"));
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

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Drum1 extends StatefulWidget {
  const Drum1({super.key});

  @override
  State<Drum1> createState() => _Drum1State();
}

class _Drum1State extends State<Drum1> {
  List clrlist = [
    {
      "color": const Color.fromARGB(255, 220, 166, 6),
    },
    {
      "color": const Color.fromARGB(255, 200, 16, 3),
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
      "color": const Color.fromARGB(255, 19, 41, 165),
    },
    {
      "color": const Color.fromARGB(255, 201, 69, 21),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 25, 25),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Drum1'),
        backgroundColor: const Color.fromARGB(255, 245, 81, 6).withOpacity(0.3),
        leading: InkWell(
          child: const Icon(Icons.arrow_back_ios),
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
            splashColor: Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  color: clrlist[index]["color"],
                  borderRadius: BorderRadius.circular(10)),
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

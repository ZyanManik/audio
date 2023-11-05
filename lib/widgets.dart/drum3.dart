import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Drum3 extends StatelessWidget {
  Drum3({super.key});
  List clrlist = [
    {
      "color": const Color.fromARGB(255, 209, 18, 4),
    },
    {
      "color": const Color.fromARGB(255, 3, 93, 166),
    },
    {
      "color": const Color.fromARGB(255, 3, 238, 11),
    },
    {
      "color": const Color.fromARGB(255, 250, 188, 0),
    },
    {
      "color": const Color.fromARGB(255, 3, 241, 126),
    },
    {
      "color": const Color.fromARGB(255, 167, 136, 25),
    },
    {
      "color": const Color.fromARGB(255, 217, 2, 255),
    },
    {
      "color": const Color.fromARGB(255, 243, 37, 37),
    },
    {
      "color": const Color.fromARGB(255, 82, 3, 96),
    },
    {
      "color": const Color.fromARGB(255, 135, 33, 33),
    },
    {
      "color": const Color.fromARGB(255, 45, 59, 142),
    },
    {
      "color": const Color.fromARGB(255, 8, 127, 143),
    },
    {
      "color": const Color.fromARGB(255, 112, 181, 34),
    },
    {
      "color": const Color.fromARGB(255, 28, 78, 78),
    },
    {
      "color": const Color.fromARGB(255, 49, 9, 117),
    },
    {
      "color": const Color.fromARGB(255, 71, 33, 20),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 25, 25),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Drum3'),
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
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 30.0,
            childAspectRatio: 0.6),
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

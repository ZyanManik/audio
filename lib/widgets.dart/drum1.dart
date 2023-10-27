import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Drum1 extends StatefulWidget {
  const Drum1({super.key});

  @override
  State<Drum1> createState() => _Drum1State();
}

class _Drum1State extends State<Drum1> {
  List clrlist = [
    {"color": Colors.amber, "description": "hello?world"},
    {"color": Colors.red, "description": "Nice to meet you"},
    {"color": Colors.blue, "description": "u can't see me"},
    {"color": Colors.amber, "description": "hello?world"},
    {"color": Colors.red, "description": "Nice to meet you"},
    {"color": Colors.blue, "description": "u can't see me"},
    {"color": Colors.amber, "description": "hello?world"},
    {"color": Colors.red, "description": "Nice to meet you"},
    {"color": Colors.blue, "description": "u can't see me"},
    {"color": Colors.amber, "description": "hello?world"},
    {"color": Colors.red, "description": "Nice to meet you"},
    {"color": Colors.blue, "description": "u can't see me"},
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
        padding:
            const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 1.0),
        itemBuilder: (context, index) => SizedBox(
          child: InkWell(
            onTap: () {
              print(clrlist[index]["description"]);
            },
            child: InkWell(
              hoverColor: const Color(0xFF233423),
              //focusColor: Colors.blue,
              highlightColor: const Color.fromARGB(255, 255, 0, 0),

              child: Container(
                decoration: BoxDecoration(
                  color: clrlist[index]["color"],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

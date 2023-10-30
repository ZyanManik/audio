import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Drum7 extends StatelessWidget {
  Drum7({super.key});
  List clrst = [
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Colors.black,
        Color.fromARGB(255, 96, 110, 44),
        Colors.white,
        Colors.blue,
        Colors.red
      ]) //1
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Colors.black,
        Color.fromARGB(255, 97, 61, 103),
        Colors.white,
        Colors.blue,
        Colors.red
      ]) //2
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Colors.black,
        Color.fromARGB(255, 66, 113, 111),
        Colors.white,
        Colors.blue,
        Colors.red
      ]) //3
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Colors.black,
        Color.fromARGB(255, 85, 134, 66),
        Colors.white,
        Colors.blue,
        Colors.red
      ]) //4
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Colors.black,
        Color.fromARGB(182, 23, 19, 91),
        Colors.white,
        Colors.blue,
        Colors.red
      ]) //5
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Colors.black,
        Color.fromARGB(136, 78, 47, 116),
        Colors.white,
        Colors.blue,
        Colors.red
      ]) //6
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Colors.black,
        Color.fromARGB(255, 19, 6, 76),
        Colors.white,
        Colors.blue,
        Colors.red
      ]) //7
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Colors.black,
        Color.fromARGB(151, 92, 3, 107),
        Colors.white,
        Colors.blue,
        Colors.red
      ]) //8
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Colors.black,
        Color.fromARGB(193, 13, 0, 1),
        Colors.white,
        Colors.blue,
        Colors.red
      ]) //9
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Colors.black,
        Color.fromARGB(255, 0, 249, 162),
        Colors.white,
        Colors.blue,
        Colors.red
      ]) //10
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Colors.black,
        Color.fromARGB(255, 54, 1, 7),
        Colors.white,
        Colors.blue,
        Colors.red
      ]) //11
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Colors.black,
        Color.fromARGB(255, 29, 2, 233),
        Colors.white,
        Colors.blue,
        Colors.red
      ]) //12
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Colors.black,
        Color.fromARGB(255, 183, 255, 0),
        Colors.white,
        Colors.blue,
        Colors.red
      ]) //13
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Color.fromARGB(255, 33, 1, 1),
        Color.fromARGB(255, 31, 231, 13),
        Color.fromARGB(255, 59, 32, 32),
        Color.fromARGB(255, 74, 116, 150),
        Color.fromARGB(178, 98, 40, 36)
      ]) //14
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 7.0, colors: [
        Color.fromARGB(255, 146, 102, 102),
        Color.fromARGB(255, 109, 37, 5),
        Color.fromARGB(255, 8, 164, 19),
        Color.fromARGB(117, 80, 128, 168),
        Color.fromARGB(255, 168, 60, 52)
      ]) //15
    },
    {
      "gradient":
          const RadialGradient(center: Alignment.topLeft, radius: 3.0, colors: [
        Color.fromARGB(255, 137, 60, 60),
        Colors.purpleAccent,
        Colors.black26,
        Colors.blueGrey,
        Colors.black
      ]) //16
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 25, 25),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Drum7'),
        backgroundColor: const Color.fromARGB(255, 245, 81, 6).withOpacity(0.3),
        leading: InkWell(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.builder(
        itemCount: clrst.length,
        padding: const EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 40.0,
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
                  gradient: clrst[index]["gradient"],
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                constraints: const BoxConstraints(
                    minWidth: 88.0,
                    minHeight: 36.0), // min sizes for Material buttons
                alignment: Alignment.center,
                child: const Text(
                  'dean',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

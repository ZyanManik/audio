import 'package:flutter/material.dart';

class Drum5 extends StatelessWidget {
  const Drum5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 25, 25),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Drum5'),
        backgroundColor: const Color.fromARGB(255, 245, 81, 6).withOpacity(0.3),
        leading: InkWell(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.builder(
        itemCount: 16,
        padding:
            const EdgeInsets.only(top: 100, left: 10, right: 10, bottom: 100),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 40.0,
            childAspectRatio: 1.0),
        itemBuilder: (context, index) => SizedBox(
          child: ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.cyanAccent),
              fixedSize: MaterialStatePropertyAll(
                Size.fromHeight(200),
              ),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: null,
          ),
        ),
      ),
    );
  }
}

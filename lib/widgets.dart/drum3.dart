import 'package:flutter/material.dart';

class Drum3 extends StatelessWidget {
  const Drum3({super.key});

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
        itemCount: 12,
        padding:
            const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 1.0),
        itemBuilder: (context, index) => SizedBox(
          child: ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.red),
              fixedSize: MaterialStatePropertyAll(
                Size.fromHeight(200),
              ),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text('Tom 1'),
          ),
        ),
      ),
    );
  }
}

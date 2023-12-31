import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 29, 29),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 35, 60, 80),
        elevation: 0.0,
        title: const Row(
          children: [
            // Text(
            //   'Musical',
            //   style: TextStyle(color: Colors.white, fontSize: 20),
            // ),
            // Text(
            //   '_Pad',
            //   style: TextStyle(
            //       color: Color.fromARGB(255, 255, 17, 1), fontSize: 20),
            // ),
          ],
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 18, right: 18),
        child: Column(
          children: [
            // Container(
            //   width: MediaQuery.sizeOf(context).width,
            //   height: 65,
            //   decoration: BoxDecoration(
            //     color: const Color.fromARGB(255, 109, 104, 104),
            //     borderRadius: BorderRadius.circular(0),
            //   ),
            //   child: const Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       SizedBox(
            //         width: 25,
            //       ),
            //       Icon(Icons.share_outlined, color: Colors.white, size: 25),
            //       SizedBox(
            //         width: 9,
            //       ),
            //       Text(
            //         'Share App',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 18,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 18,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 144,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 109, 104, 104),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Icon(Icons.language_outlined,
                          color: Colors.white, size: 25),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        'Choose Language',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Icon(Icons.dark_mode_outlined,
                          color: Colors.white, size: 25),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        'Dark Mode',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 65,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 109, 104, 104),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Icon(Icons.thumb_up_alt_outlined,
                      color: Colors.white, size: 25),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    'Rate App',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 180,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 109, 104, 104),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Icon(Icons.message_outlined,
                          color: Colors.white, size: 25),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        'Feedback',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Icon(Icons.feed_sharp, color: Colors.white, size: 25),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Icon(Icons.error_outline, color: Colors.white, size: 25),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        'Version 1.11',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

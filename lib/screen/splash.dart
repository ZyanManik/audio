import 'package:audio/screen/bottomnav.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const BottomNavigationBarExample(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 138, 202),
      body: Stack(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 7, 67, 102).withOpacity(0.5),
                image: const DecorationImage(
                    image: NetworkImage(
                      "https://e0.pxfuel.com/wallpapers/545/178/desktop-wallpaper-music-pearl-drums-background-for-drummer.jpg",
                    ),
                    fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(200),
                  bottomLeft: Radius.circular(200),
                ),
                boxShadow: const [
                  BoxShadow(blurRadius: 4, spreadRadius: 6, color: Colors.white)
                ]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://images.vexels.com/media/users/3/191299/isolated/preview/92eb00a2a8197fad37ef00b395cc87ee-music-drum.png"),
                        fit: BoxFit.cover),
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 9, spreadRadius: 8, color: Colors.white)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

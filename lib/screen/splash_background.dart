import 'package:flutter/material.dart';

class SplashBackground extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final screenHeight;

  const SplashBackground({super.key, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    //final themedata = Theme.of(context);
    return ClipPath(
      clipper: BottomShapeClipper(),
      child: Container(
        height: screenHeight * 0.3,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: FractionalOffset.topLeft,
            radius: 6.0,
            colors: [
              Color.fromARGB(255, 254, 6, 6),
              Color.fromARGB(255, 3, 74, 255),
              Color.fromARGB(255, 242, 0, 255),
              Color.fromARGB(255, 254, 6, 6),
              Color.fromARGB(255, 3, 74, 255),
              Color.fromARGB(255, 242, 0, 255),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartPoint = Offset(0, size.height * 0.85);
    Offset curveEndPoint = Offset(size.width, size.height * 0.85);
    path.lineTo(curveStartPoint.dx, curveStartPoint.dy);
    path.quadraticBezierTo(
        size.width / 2, size.height, curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

<<<<<<< HEAD

import 'package:adaptive_theme/adaptive_theme.dart';

import 'package:audio/screen/bottomnav.dart';

=======
import 'package:audio/screen/bottomnav.dart';
//import 'package:audio/screen/splash1.dart';
//import 'package:audio/screen/splash.dart';
>>>>>>> 74dfd000993aa536cdf35f5106e38cb918d49233
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color.fromARGB(255, 35, 60, 80),
  ));
  WidgetsFlutterBinding.ensureInitialized();
    final savedThemeMode = await AdaptiveTheme.getThemeMode();
   runApp(MyApp(savedThemeMode: savedThemeMode));
 
}

<<<<<<< HEAD
=======
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  // void initState() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarExample(),
    );
  }
}
>>>>>>> 74dfd000993aa536cdf35f5106e38cb918d49233

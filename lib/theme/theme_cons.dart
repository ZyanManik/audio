import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    switchTheme: SwitchThemeData(
        thumbIcon: MaterialStateProperty.all(const Icon(Icons.dark_mode))
        ));

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all<Color>(Colors.grey),
        thumbColor: MaterialStateProperty.all<Color>(Colors.white),
        thumbIcon: MaterialStateProperty.all(const Icon(Icons.light_mode))
        
        )
        );

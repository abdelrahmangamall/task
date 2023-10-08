import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

bool iconBool = false;

IconData iconOn = Icons.toggle_on_outlined ;
IconData iconOff = Icons.toggle_off_outlined;

IconData iconPlay = Icons.play_circle_outline ;
IconData iconPause = Icons.pause_circle_outline;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(),
  appBarTheme: const AppBarTheme(foregroundColor: Colors.white),
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(),
  appBarTheme: const AppBarTheme(foregroundColor: Colors.black),
);

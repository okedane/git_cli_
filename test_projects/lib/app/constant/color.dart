import 'package:flutter/material.dart';

const appRed = Color(0xFFB71C1C);
const appYellow = Color.fromARGB(255, 220, 255, 24);
const appGreen = Color.fromARGB(255, 29, 150, 2);
const appBlack = Colors.black;
const appWhite = Colors.white;

ThemeData light = ThemeData(
  //mengubah default appBar
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: appWhite,
    titleTextStyle: TextStyle(
      color: appYellow,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
  ),
  // secara default semua wana font jadi appRed
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      color: appRed,
    ),
  ),

  //Mengubah default elevated Button
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: appBlack,
    ),
  ),
);

ThemeData dark = ThemeData(
  //mengubah default appBar
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    backgroundColor: appBlack,
    titleTextStyle: TextStyle(
      color: appYellow,
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
  ),
  // secara default semua wana font jadi appRed
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      color: appRed,
    ),
  ),

  //Mengubah default elevated Button
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: appWhite,
    ),
  ),
);

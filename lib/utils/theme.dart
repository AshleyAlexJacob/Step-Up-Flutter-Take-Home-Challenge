import 'package:flutter/material.dart';

class OurTheme {
  Color lightGreen = Color(0xFFEEF3EF);
  Color lightGrey = Color(0xFF9B9B9B);
  Color darkerGrey = Color(0xFF222421);
  ThemeData buildHere() {
    return ThemeData(
      primaryColor: lightGreen,
      backgroundColor: Colors.white,
      appBarTheme: AppBarTheme(backgroundColor: Colors.white),
      iconTheme: IconThemeData(color: lightGrey),
    );
  }
}

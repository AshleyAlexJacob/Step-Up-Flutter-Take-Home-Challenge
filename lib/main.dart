import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:take_home_challenge_submission/screens/navigation/navigation.dart';
import 'package:take_home_challenge_submission/utils/theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: OurTheme().buildHere(),
      debugShowCheckedModeBanner: false,
      home: NavigationScreen(),
    );
  }
}

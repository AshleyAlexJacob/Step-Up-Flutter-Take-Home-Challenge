import 'package:take_home_challenge_submission/models/settings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class data {
  static const String profile = 'assets/me.jpg';
  static const String logo = 'assets/logo.png';

  static List<Settings> settings0 = [
    Settings('Connections', 'Wi-Fi, Bluetooth, Flight mode, Data usage',
        FontAwesomeIcons.wifi, Colors.blue[200]),
  ];
  static List<Settings> settings = [
    Settings('Sounds and vibration', 'Sound Mode, Ringtone Volume',
        FontAwesomeIcons.volumeUp, Colors.indigo[200]),
    Settings('Notifications', 'App notifications, Status bar, Do not disturb',
        FontAwesomeIcons.box, Colors.redAccent[100]),
  ];
  static List<Settings> settings1 = [
    Settings('Display', 'Brightness, Blue Light Filter, HomeScreen',
        FontAwesomeIcons.sun, Colors.green[200]),
    Settings('Wallpaper', 'Home Screen Wallpaper, Lock Screen Wallpaper',
        FontAwesomeIcons.portrait, Colors.pink[200]),
    Settings('Themes', 'Themes, Wallpapers, Icons',
        FontAwesomeIcons.paintRoller, Colors.purple[200]),
    Settings('Lock Screen', 'Lock Screen Type, Always on Display, Clock Style',
        FontAwesomeIcons.lock, Colors.teal[200]),
  ];

  static List<Settings> settings2 = [
    Settings(
        'Biometrics and Security',
        'Intelligent Scan, Facial Recognition, Find my Mobile',
        Icons.security,
        Colors.blueAccent[100]),
    Settings('Privacy', 'Permission Manager', Icons.security_sharp,
        Colors.blue[100]),
    Settings('Location', 'Location Settings, Location Requests',
        Icons.location_pin, Colors.greenAccent[200]),
    Settings('Accounts and backup', 'Samsung Account, Smart Switch',
        Icons.verified_user, Colors.blue[200]),
    Settings('Google', 'Google Settings', FontAwesomeIcons.google,
        Colors.lightBlue[200]),
  ];

  static List<Settings> settings3 = [
    Settings('Advanced Features', 'Motions and gestures, One-handed mode',
        Icons.settings_applications, Colors.yellow[300]),
  ];
  static List<Settings> settings4 = [
    Settings('Digital Wellbeing and Parental Controls',
        'Screen Time, App times, Wind Down', Icons.healing, Colors.green[200]),
  ];
}

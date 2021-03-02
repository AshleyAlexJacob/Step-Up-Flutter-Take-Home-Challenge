import 'package:flutter/material.dart';
import 'package:take_home_challenge_submission/screens/navigation/adobeAcrobat/homeScreen/homeScreen.dart';
import 'package:take_home_challenge_submission/screens/navigation/settings/settingScreen/settingsScreen.dart';
import 'package:take_home_challenge_submission/utils/theme.dart';

class NavigationScreen extends StatelessWidget {
  void navigateToSettings(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => SettingsScreen()));
  }

  void navigateToAdobe(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _body(context),
      ),
    );
  }

  _body(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Flutter Take Home Challenge Submission\n",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
              onPressed: () => navigateToSettings(context),
              child: Text(
                'Settings App Screen Clone',
                style: TextStyle(fontSize: 18, color: OurTheme().darkerGrey),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Adobe Acrobat Screen Clone',
                style: TextStyle(fontSize: 18, color: OurTheme().darkerGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

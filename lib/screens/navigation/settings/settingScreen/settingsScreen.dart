import 'package:flutter/material.dart';
import 'package:take_home_challenge_submission/screens/navigation/settings/settingScreen/specialContainer.dart';
import 'package:take_home_challenge_submission/utils/strings.dart';
import 'package:take_home_challenge_submission/utils/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OurTheme().lightGreen,
      body: SingleChildScrollView(
        child: SafeArea(
          child: _body(),
        ),
      ),
    );
  }

  _body() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 60.0),
          child: Center(
            child: Text(
              'Settings',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 40,
                  color: OurTheme().darkerGrey),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  color: OurTheme().darkerGrey,
                  icon: Icon(FontAwesomeIcons.search),
                  onPressed: () {}),
              CircleAvatar(
                backgroundImage: AssetImage(data.profile),
              ),
            ],
          ),
        ),
        SpecialContainer(
          items: data.settings0,
        ),
        SpecialContainer(
          items: data.settings,
        ),
        SpecialContainer(
          items: data.settings1,
        ),
        SpecialContainer(
          items: data.settings2,
        ),
        SpecialContainer(
          items: data.settings3,
        ),
        SpecialContainer(
          items: data.settings4,
        ),
      ],
    );
  }
}

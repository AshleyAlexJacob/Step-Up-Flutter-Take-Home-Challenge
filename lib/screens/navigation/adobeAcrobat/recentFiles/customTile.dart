import 'package:flutter/material.dart';
import 'package:take_home_challenge_submission/models/pdf.dart';
import 'package:take_home_challenge_submission/utils/theme.dart';

class CustomTile extends StatelessWidget {
  final PDF pdf;
  CustomTile(this.pdf);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: ListTile(
          leading: Image.asset(pdf.image),
          title: Text(
            pdf.title,
            style: TextStyle(fontSize: 17.0, color: OurTheme().darkerGrey),
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              children: [
                Icon(
                  pdf.icon,
                  size: 15.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  pdf.desc,
                ),
              ],
            ),
          ),
          trailing: Icon(Icons.list),
        ),
      ),
    );
  }
}

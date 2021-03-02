import 'package:flutter/material.dart';
import 'package:take_home_challenge_submission/models/settings.dart';
import 'package:take_home_challenge_submission/utils/theme.dart';

class SpecialContainer extends StatelessWidget {
  final List<Settings> items;
  SpecialContainer({this.items});
  @override
  Widget build(BuildContext context) {
    return items.length > 1
        ? InkWell(
            onTap: () {},
            child: Container(
              height: 88.0 * items.length,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white),
              child: ListView.separated(
                  primary: false,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(
                        items[index].icon,
                        color: items[index].color,
                      ),
                      title: Text(items[index].title),
                      subtitle: Text(items[index].sub),
                    );
                  },
                  separatorBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(left: 70.0, right: 20.0),
                        child: Divider(
                          color: OurTheme().lightGrey,
                        ),
                      ),
                  itemCount: items.length),
            ),
          )
        : InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white),
              child: ListTile(
                leading: Icon(
                  items[0].icon,
                  color: items[0].color,
                ),
                title: Text(
                  items[0].title,
                  style: TextStyle(color: OurTheme().darkerGrey),
                ),
                subtitle: Text(
                  items[0].sub,
                  style: TextStyle(color: OurTheme().lightGrey),
                ),
              ),
            ),
          );
  }
}

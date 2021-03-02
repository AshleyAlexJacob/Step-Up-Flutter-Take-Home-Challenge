import 'package:flutter/material.dart';
import 'package:take_home_challenge_submission/models/pdf.dart';
import 'package:take_home_challenge_submission/screens/navigation/adobeAcrobat/recentFiles/customTile.dart';

class PDFListView extends StatelessWidget {
  final List<PDF> dataList;
  PDFListView({this.dataList});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        primary: false,
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return CustomTile(dataList[index]);
        });
  }
}

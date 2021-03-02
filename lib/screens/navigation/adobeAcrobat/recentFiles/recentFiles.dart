import 'package:flutter/material.dart';
import 'package:take_home_challenge_submission/screens/navigation/adobeAcrobat/recentFiles/pdfListView.dart';
import 'package:take_home_challenge_submission/utils/pdfStrings.dart';

class RecentFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 300.0,
      child: PDFListView(dataList: PdfStrings.pdfData),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:take_home_challenge_submission/models/pdf.dart';

class PdfStrings {
  static const String pdf = 'assets/pdf.png';
  static const String doc = 'assets/doc.png';

  static List<PDF> pdfData = [
    PDF('Welcome', 'PDF · Just Now · 212.5kb', doc, Icons.mobile_friendly),
    PDF('Ten Pearls....U..Flutter Step-Up', 'PDF · 8 Feb 2021 · 204.4kb', pdf,
        Icons.mobile_friendly),
    PDF('Lec schdld 21', 'PDF · 5 Feb 2021 · 212.5kb', pdf,
        Icons.mobile_friendly),
    PDF('Lec schdld 21', 'PDF · 5 Feb 2021 · 212.5kb', pdf,
        Icons.mobile_friendly),
    PDF('Welcome', 'PDF · 5 Feb 2021 · 212.5kb', doc, Icons.mobile_friendly),
    PDF('Vend', 'PDF · 5 Feb 2021 · 212.5kb', pdf, Icons.file_copy),
    PDF('Setp Up Flutter', 'PDF · 5 Feb 2021 · 212.5kb', pdf, Icons.file_copy),
    PDF('Vend', 'PDF · 5 Feb 2021 · 212.5kb', pdf, Icons.file_copy),
    PDF('Setp Up Flutter', 'PDF · 5 Feb 2021 · 212.5kb', pdf, Icons.file_copy),
  ];
}

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTypography {
  static final headingLarge = GoogleFonts.poppins()
      .copyWith(fontSize: 24.0, fontWeight: FontWeight.w800);

  static final headingBold = GoogleFonts.poppins()
      .copyWith(fontSize: 20.0, fontWeight: FontWeight.bold);

  static final heading = GoogleFonts.poppins()
      .copyWith(fontSize: 20.0, fontWeight: FontWeight.w400);

  static final txtMedium = GoogleFonts.poppins()
      .copyWith(fontSize: 16.0, fontWeight: FontWeight.w400);

  static final txtSmalItalic = GoogleFonts.poppins().copyWith(
      fontSize: 12.0, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic);

  static final txtSmall = GoogleFonts.poppins()
      .copyWith(fontSize: 13.0, fontWeight: FontWeight.w400);

  static final verySmall = GoogleFonts.poppins()
      .copyWith(fontSize: 12.0, fontWeight: FontWeight.w400);

  static final txtButton = GoogleFonts.poppins()
      .copyWith(fontSize: 14.0, fontWeight: FontWeight.bold);
}

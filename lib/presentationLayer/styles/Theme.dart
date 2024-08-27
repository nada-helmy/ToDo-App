import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mycolors.dart';

class Apptheme {
  static ThemeData lighttheme= ThemeData(
    scaffoldBackgroundColor:Mycolors.background,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Mycolors.blue,
      titleTextStyle: GoogleFonts.laila(
          fontWeight:FontWeight.bold,
          fontSize:37,
          color:Mycolors.white),
    ),
  );
}

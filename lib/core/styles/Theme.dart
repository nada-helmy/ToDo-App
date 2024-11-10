import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mycolors.dart';

class Apptheme {
  static ThemeData lightTheme= ThemeData(
    scaffoldBackgroundColor:Mycolors.background,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Mycolors.blue,
      titleTextStyle: GoogleFonts.laila(
          fontWeight:FontWeight.bold,
          fontSize:38,
          color:Mycolors.white),
    ),
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 25,
        color: Mycolors.white,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        fontSize: 30,
        color: Mycolors.white,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        fontSize: 28,
        color: Mycolors.white,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall:TextStyle(
        fontSize: 27,
        color: Mycolors.white,
        fontWeight: FontWeight.w500,
      ) ,
      headlineMedium:TextStyle(
        fontSize: 29,
        color: Mycolors.white,
        fontWeight: FontWeight.w500,
      ) ,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape: StadiumBorder(
        side: BorderSide(
          width: 3,
          color: Mycolors.white,
        )
      )
    )
  );
  static ThemeData darkTheme= ThemeData(
      scaffoldBackgroundColor:Mycolors.darkbackground,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Mycolors.blue,
        titleTextStyle: GoogleFonts.laila(
            fontWeight:FontWeight.bold,
            fontSize:38,
            color:Mycolors.white),
      ),
      textTheme: TextTheme(
        bodySmall: TextStyle(
          fontSize: 25,
          color: Mycolors.white,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          fontSize: 30,
          color: Mycolors.white,
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: TextStyle(
          fontSize: 28,
          color: Mycolors.white,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall:TextStyle(
          fontSize: 27,
          color: Mycolors.white,
          fontWeight: FontWeight.w500,
        ) ,
        headlineMedium:TextStyle(
          fontSize: 29,
          color: Mycolors.white,
          fontWeight: FontWeight.w500,
        ) ,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          shape: StadiumBorder(
              side: BorderSide(
                width: 3,
                color: Mycolors.white,
              )
          )
      )
  );
}

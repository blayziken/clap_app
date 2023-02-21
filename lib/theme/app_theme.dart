import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //spaces
  static double cardPadding = 20.h;
  static double elementSpacing = cardPadding * 0.5;
  static const double bottomNavBarHeight = 64;
  static const Duration animationDuration = Duration(milliseconds: 300);
  static BorderRadius cardRadius = BorderRadius.circular(10);
  static double iconSize = cardPadding;

  static const Color blackLight = Color(0xFF292031);

  static Size size(BuildContext context) => MediaQuery.of(context).size;

  //colors
  static const Color appText = Color(0XFF344767); // Color(0XFFf5f5f5); //
  static const Color appTextLight = Color.fromARGB(102, 52, 71, 103); // Color(0XFFf5f5f5); //
  static const Color iconColor = Color(0XFF344767); // Color(0XFFf5f5f5); //
  static const Color backgroundColor = Color(0XFFEDF5F9); // Color(0XFFf5f5f5); //
  static const Color appBarBackgroundColor = Color(0XFFEDF5F9);
  static const Color primaryColor = Color.fromARGB(255, 16, 131, 41);
  static const Color black = Color(0xFF141416);
  static const Color orange = Color(0xFFFFBD69);
  static const Color orangeDark = Color(0xFFFF7565);

  static const Color white = Color(0xFFFFFFFF);
  static const Color red = Color(0xFFFF6363);
  static const Color purple = Color(0xFF543864);
  static const Color purpleDark = Color(0xFF221C29);

  static const Color darkBlue = Color(0xFF202040);
  static const Color grey = Color(0xFF636363);
  static const Color darkBlueLight = Color(0xFF382843);
  static const Color appBlue = Color(0xFF17c1e8);
  static const Color appBlueDarker = Color(0xFF2152ff);
  static const Color darkGreen = Color.fromARGB(255, 16, 131, 41);
  static const Color lightGreen = Color(0xFF98ec2d);

  //text theme
  static TextTheme textTheme = TextTheme(
    headline1: GoogleFonts.poppins(
      fontSize: 38.4,
      letterSpacing: -1.0,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    headline2: GoogleFonts.poppins(
      fontSize: 27.2,
      letterSpacing: -0.25,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 21.2,
      letterSpacing: 0,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 20.4,
      letterSpacing: 0,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 18.0,
      letterSpacing: 0,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 17.0,
      letterSpacing: 0.25,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    subtitle1: GoogleFonts.poppins(
      fontSize: 15.3,
      letterSpacing: 0.15,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    subtitle2: GoogleFonts.poppins(
      fontSize: 11.3,
      letterSpacing: 0.1,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    bodyText1: GoogleFonts.poppins(
      fontSize: 15.sp,
      letterSpacing: 0.5,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    bodyText2: GoogleFonts.poppins(
      fontSize: 15.sp,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    caption: GoogleFonts.poppins(
      fontSize: 10.8,
      letterSpacing: 0.4,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    button: GoogleFonts.poppins(
      fontSize: 18.0,
      letterSpacing: 0.60,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    overline: GoogleFonts.poppins(
      fontSize: 8.0,
      letterSpacing: 0.1,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
  );

  static ThemeData theme = ThemeData(
    backgroundColor: AppTheme.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppTheme.backgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(color: AppTheme.black),
    ),
    scaffoldBackgroundColor: AppTheme.backgroundColor,
    primaryColor: darkGreen,
    hintColor: Colors.black,
    indicatorColor: red,
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(purple),
      splashRadius: 24,
    ),
    iconTheme: const IconThemeData(color: iconColor),
    splashColor: primaryColor.withOpacity(.4),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      labelStyle: textTheme.bodyText2,
      hintStyle: textTheme.bodyText2?.copyWith(
        color: Colors.black38,
        fontWeight: FontWeight.w300,
        fontSize: 13.sp,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: (Colors.grey[700])!),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: (Colors.grey[700])!),
        borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: (Colors.grey[700])!),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    primaryIconTheme: const IconThemeData(color: black),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    unselectedWidgetColor: white,
    textTheme: textTheme,
    primaryTextTheme: textTheme,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: red),
  );
}

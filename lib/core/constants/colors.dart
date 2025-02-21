import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color.fromARGB(255, 52, 26, 103);
  static const Color blue = Color(0xff3C9AFB);
  static const Color gray = Color.fromARGB(255, 163, 163, 163);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffffffff);
  static const Color stroke = Color(0xffE2E8F0);
  static const Color red = Color(0xfffB8564);
  static const Color green = Color(0xff4AB178);
  static const Color yellow = Color(0xffFBC447);
  static const Color background = Color.fromARGB(255, 252, 245, 245);
  static const Color background1 = Color.fromARGB(134, 93, 92, 93);

  static ThemeData darkTheme =
      ThemeData(useMaterial3: true, colorScheme: darkColorScheme);
  static ThemeData lightTheme =
      ThemeData(useMaterial3: true, colorScheme: lightColorScheme);

  static ColorScheme lightColorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.white,
    onPrimary: Color.fromARGB(255, 255, 255, 255),
    onPrimaryContainer: Color.fromARGB(255, 255, 255, 255),
    secondary: Color.fromARGB(255, 0, 0, 0),
    onSecondary: Color.fromARGB(255, 255, 255, 255),
    onSecondaryContainer: Color.fromARGB(255, 255, 255, 255),
    onTertiary: Color.fromARGB(255, 255, 255, 255),
    onTertiaryContainer: Color.fromARGB(255, 255, 255, 255),
    error: Color(0xff600004),
    onError: Colors.white,
    errorContainer: Color(0xff98000a),
    onErrorContainer: Colors.white,
    surface: Color.fromARGB(255, 255, 255, 255),
    onSurface: Color(0xff000000),
    onSurfaceVariant: Color(0xff000000),
    outline: Color.fromARGB(255, 0, 0, 0),
    outlineVariant: Color.fromARGB(255, 0, 0, 0),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color.fromARGB(255, 0, 0, 0),
    inversePrimary: Color.fromARGB(255, 255, 255, 255),
    primaryFixed: Color.fromARGB(255, 255, 255, 255),
    onPrimaryFixed: Color.fromARGB(255, 255, 255, 255),
    onPrimaryFixedVariant: Color.fromARGB(255, 255, 255, 255),
    onSecondaryFixed: Colors.white,
    onSecondaryFixedVariant: Colors.white,
    onTertiaryFixed: Colors.white,
    onTertiaryFixedVariant: Colors.white,
    surfaceDim: Colors.white,
    surfaceBright: Colors.white,
    surfaceContainerLowest: Colors.white,
    surfaceContainerLow: Colors.white,
    surfaceContainer: Colors.white,
    surfaceContainerHigh: Colors.white,
    surfaceContainerHighest: Colors.white,
  );

  static ColorScheme darkColorScheme = const ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromARGB(255, 255, 255, 255),
    surfaceTint: Color(0xffffb5a0),
    onPrimary: Color.fromARGB(255, 0, 0, 0),
    primaryContainer: Color(0xff723523),
    onPrimaryContainer: Color(0xffffdbd1),
    secondary: Color(0xffe7bdb2),
    onSecondary: Color(0xff442a22),
    secondaryContainer: Color(0xff5d4037),
    onSecondaryContainer: Color(0xffffdbd1),
    tertiary: Color(0xffd8c58d),
    onTertiary: Color(0xff3b2f05),
    tertiaryContainer: Color(0xff534619),
    onTertiaryContainer: Color(0xfff5e1a7),
    error: Color(0xffffb4ab),
    onError: Color(0xff690005),
    errorContainer: Color(0xff93000a),
    onErrorContainer: Color(0xffffdad6),
    surface: Color(0xff1a110f),
    onSurface: Color.fromARGB(255, 255, 255, 255),
    onSurfaceVariant: Color(0xffd8c2bc),
    outline: Color(0xffa08c87),
    outlineVariant: Color(0xff53433f),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xfff1dfda),
    inversePrimary: Color(0xff8f4c38),
    primaryFixed: Color(0xffffdbd1),
    onPrimaryFixed: Color(0xff3a0b01),
    primaryFixedDim: Color(0xffffb5a0),
    onPrimaryFixedVariant: Color(0xff723523),
    secondaryFixed: Color(0xffffdbd1),
    onSecondaryFixed: Color(0xff2c150f),
    secondaryFixedDim: Color(0xffe7bdb2),
    onSecondaryFixedVariant: Color(0xff5d4037),
    tertiaryFixed: Color(0xfff5e1a7),
    onTertiaryFixed: Color(0xff231b00),
    tertiaryFixedDim: Color(0xffd8c58d),
    onTertiaryFixedVariant: Color(0xff534619),
    surfaceDim: Color(0xff1a110f),
    surfaceBright: Color(0xff423734),
    surfaceContainerLowest: Color(0xff140c0a),
    surfaceContainerLow: Color(0xff231917),
    surfaceContainer: Color(0xff271d1b),
    surfaceContainerHigh: Color(0xff322825),
    surfaceContainerHighest: Color(0xff3d322f),
  );
}

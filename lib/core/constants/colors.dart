import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color.fromARGB(255, 52, 26, 103);
  static const Color blue = Color(0xff3C9AFB);
  static const Color gray = Color.fromARGB(255, 163, 163, 163);
  static const Color grayMuda = Color.fromARGB(255, 233, 216, 216);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffffffff);
  static const Color stroke = Color(0xffE2E8F0);
  static const Color red = Color(0xfffB8564);
  static const Color green = Color(0xff4AB178);
  static const Color yellow = Color(0xffFBC447);
  static const Color appbar = Color(0xffD9E3FB);
  static const Color background2 = Color.fromARGB(255, 57, 57, 57);
  static const Color background = Color.fromARGB(255, 252, 245, 245);
  static const Color rectangle = Color.fromARGB(255, 108, 108, 108);

  static ThemeData darkTheme =
      ThemeData(useMaterial3: true, colorScheme: darkColorScheme);
  static ThemeData lightTheme =
      ThemeData(useMaterial3: true, colorScheme: lightColorScheme);

  static ColorScheme lightColorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromARGB(255, 117, 117, 117),
    onPrimary: Colors.white,
    primaryContainer: Color(0xFFD1C4E9),
    onPrimaryContainer: Color.fromARGB(255, 255, 255, 255),
    secondary: Color(0xFF03DAC6),
    onSecondary: Colors.black,
    secondaryContainer: Color(0xFFB2DFDB),
    onSecondaryContainer: Color(0xFF004D40),
    tertiary: Color(0xFFFFC107),
    onTertiary: Colors.black,
    tertiaryContainer: Color(0xFFFFE082),
    onTertiaryContainer: Color(0xFFFF6F00),
    error: Color(0xFFB00020),
    onError: Colors.white,
    errorContainer: Color(0xFFFFCDD2),
    onErrorContainer: Color(0xFFB71C1C),
    surface: Colors.white,
    onSurface: Colors.black,
    onSurfaceVariant: Colors.black,
    outline: Color(0xFF757575),
    outlineVariant: Color(0xFFBDBDBD),
    shadow: Colors.black38,
    scrim: Colors.black54,
    inverseSurface: Color(0xFF121212),
    inversePrimary: Color.fromARGB(255, 91, 91, 91),
    primaryFixed: Color(0xFFD1C4E9),
    onPrimaryFixed: Color.fromARGB(255, 121, 121, 121),
    onPrimaryFixedVariant: Color.fromARGB(255, 99, 99, 99),
    onSecondaryFixed: Color(0xFF004D40),
    onSecondaryFixedVariant: Color(0xFF03DAC6),
    onTertiaryFixed: Color(0xFFFF6F00),
    onTertiaryFixedVariant: Color(0xFFFFC107),
    surfaceDim: Color(0xFFF5F5F5),
    surfaceBright: Colors.white,
    surfaceContainerLowest: Colors.white,
    surfaceContainerLow: Color(0xFFFAFAFA),
    surfaceContainer: Color(0xFFF0F0F0),
    surfaceContainerHigh: Color(0xFFE0E0E0),
    surfaceContainerHighest: Color(0xFFD6D6D6),
  );

  static ColorScheme darkColorScheme = const ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromARGB(255, 255, 255, 255),
    surfaceTint: Color(0xffffb5a0),
    onPrimary: Color.fromARGB(255, 0, 0, 0),
    primaryContainer: Color(0xff723523),
    onPrimaryContainer: Color.fromARGB(255, 255, 255, 255),
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
    surface: Color.fromARGB(255, 0, 0, 0),
    onSurface: Color.fromARGB(255, 255, 255, 255),
    onSurfaceVariant: Color.fromARGB(255, 255, 255, 255),
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

import 'package:flutter/material.dart';

import 'colors.dart';


class Theme {
  static final ThemeData baseLight = ThemeData.light();
  static final ThemeData baseDark = ThemeData.dark();

  static ThemeData get lightTheme {
    return baseLight.copyWith(
      textTheme: _lightTextTheme,
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kPrimaryColor,
      appBarTheme: _appBarTheme,
      floatingActionButtonTheme: _fabTheme,
      errorColor: kErrorColor,
      buttonColor: kAccentColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
    );
  }

  static TextTheme get _lightTextTheme {
    return const TextTheme(
      subtitle1: TextStyle(
        fontFamily: 'Nunito',
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: kTextTitleColor,
      ),
      caption: TextStyle(
        fontFamily: 'Nunito',
        fontSize: 17.0,
        color: kGreyColor,
        fontWeight: FontWeight.w500,
      ),
      subtitle2: TextStyle(
        fontFamily: 'Nunito',
        fontSize: 17.0,
        color: kAccentColor,
      ),
    );
  }

  static AppBarTheme get _appBarTheme {
    return AppBarTheme(
      elevation: 0,
      color: kPrimaryColor,
      textTheme: _lightTextTheme.copyWith(
        subtitle1: const TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.w600,
          color: kTextTitleColor,
        ),
      ),
      iconTheme: const IconThemeData(
        color: kTextTitleColor,
      ),
    );
  }

  static FloatingActionButtonThemeData get _fabTheme =>
      const FloatingActionButtonThemeData(backgroundColor: kAccentColor);

  static ThemeData get darkTheme {
    return baseDark.copyWith(
      textTheme: _darkTextTheme,
      accentColor: kAccentColorDark,
      primaryColor: kPrimaryColorDark,
      scaffoldBackgroundColor: kPrimaryColorDark,
      appBarTheme: _appBarThemeDark,
      floatingActionButtonTheme: _fabThemeDark,
      errorColor: kErrorColorDark,
      buttonColor: kAccentColorDark,
    );
  }

  static TextTheme get _darkTextTheme {
    return const TextTheme(
      subtitle1: TextStyle(
        fontFamily: 'Nunito',
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      caption: TextStyle(
        fontFamily: 'Nunito',
        fontSize: 17.0,
        color: kGreyColorDark,
        fontWeight: FontWeight.w500,
      ),
      subtitle2: TextStyle(
        fontFamily: 'Nunito',
        fontSize: 17.0,
        color: kAccentColorDark,
      ),
    );
  }

  static FloatingActionButtonThemeData get _fabThemeDark =>
      const FloatingActionButtonThemeData(
          backgroundColor: kAccentColorDark, foregroundColor: Colors.white);

  static AppBarTheme get _appBarThemeDark {
    return AppBarTheme(
      elevation: 0,
      color: kPrimaryColorDark,
      textTheme: _darkTextTheme.copyWith(
        subtitle1: const TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.w600,
          color: kTextTitleColorDark,
        ),
      ),
      iconTheme: const IconThemeData(
        color: kTextTitleColorDark,
      ),
    );
  }
}
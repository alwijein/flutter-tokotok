import 'package:flutter_auth_new/bootstrap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_new/constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0.0,
    brightness: Brightness.light,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: kSecondaryColor,
        fontSize: 18,
      ),
    ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10.0,
  );
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 40,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
  );
}

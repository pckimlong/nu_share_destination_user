import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const primaryColor = Color(0xFF00A800);
  static const facebookBlue = Color(0xFF3B5998);
  static const errorColor = Colors.red;
  static const hintColor = Colors.black26;
  static final textFieldBgColor = Colors.grey[100];
}

class AppStyles {
  AppStyles._();

  static const labelStyle = TextStyle(fontWeight: FontWeight.w600);
  static const bottonTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static const double minTextFieldHeight = 48.0;
  static final textFieldRadius = BorderRadius.circular(8);
  static const borderRadiusValue = 4.0;
}

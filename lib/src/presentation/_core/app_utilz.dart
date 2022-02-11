import 'package:flutter/material.dart';

abstract class AppUtilzs {
  const AppUtilzs._();
  static void closeKeyBoard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
}

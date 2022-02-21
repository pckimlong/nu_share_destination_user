import 'package:flutter/cupertino.dart';

abstract class AppUtilzs {
  const AppUtilzs._();
  static void closeKeyBoard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void pushTo(BuildContext context, Widget Function(BuildContext) page) {
    Navigator.of(context).push(CupertinoPageRoute(builder: page));
  }

  static void pushReplace(
      BuildContext context, Widget Function(BuildContext) page) {
    Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: page));
  }

  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}

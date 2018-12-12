import 'package:flutter/material.dart';

class MyNavigator {
  static void goToMainPage(BuildContext context) {
    Navigator.pushNamed(context, "/main-page");
  }

  static void goToNewsDetail(BuildContext context) {
    Navigator.pushNamed(context, "/news-detail");
  }
}

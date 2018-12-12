import 'package:flutter/material.dart';
import 'package:v_read/ui/MainPage.dart';
import 'package:v_read/ui/SplashScreen.dart';
import 'package:v_read/ui/news_detail.dart';

var routes = <String, WidgetBuilder>{
  "/": (context) => SplashScreen(),
  "/main-page": (context) => MainPage(),
  "/news-detail": (context) => NewsDetail(),
};

void main() {
  runApp(new MaterialApp(
      theme: ThemeData(primaryColor: Colors.red, accentColor: Colors.red),
      debugShowCheckedModeBanner: false,
      //home: SplashScreen(),
      routes: routes));
}

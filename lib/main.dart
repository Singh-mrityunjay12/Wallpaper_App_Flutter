// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/gets/get1.dart';

import 'package:flutter_application_1/view/screens/cotegary.dart';
import 'package:flutter_application_1/view/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme:
              TextTheme(subtitle1: TextStyle(color: Colors.black)),
          textTheme: TextTheme(
              subtitle1: TextStyle(color: Colors.black, fontFamily: 'Aveny'))),
      home: Home_Screen11(),
    );
  }
}

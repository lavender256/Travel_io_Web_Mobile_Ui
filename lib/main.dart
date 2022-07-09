import 'package:flutter/material.dart';
import 'package:travel_io/screens/home_screen.dart';
import 'package:travel_io/screens/mobile/home_screen_mobile.dart';
import 'package:travel_io/screens/mobile/nav_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel io',
      theme: ThemeData(
        fontFamily: "Vara"
      ),
      home: HomeScreen()
    );
  }
}

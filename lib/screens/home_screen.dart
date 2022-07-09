import 'package:flutter/material.dart';
import 'package:travel_io/screens/find_tour_screen.dart';
import 'package:travel_io/screens/splash_screen.dart';
import 'package:travel_io/widgets/responsive.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(desktop: FindTourScreen(), mobile: SplashScreen());
  }
}

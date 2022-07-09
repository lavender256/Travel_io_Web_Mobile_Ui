import 'package:flutter/material.dart';
import 'package:travel_io/screens/desktop/find_tour_screen_desktop.dart';
import 'package:travel_io/widgets/find_tour_form.dart';
import 'package:travel_io/widgets/responsive.dart';

class FindTourScreen extends StatefulWidget {
  @override
  _FindTourScreenState createState() => _FindTourScreenState();
}

class _FindTourScreenState extends State<FindTourScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          width: size.width,
          height: size.height,
          child: Responsive.isMobile(context)
              ? FindTourForm()
              : FindTourScreenDesktop()),
    );
  }
}

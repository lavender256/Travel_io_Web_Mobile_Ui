import 'package:flutter/material.dart';

import '../colors.dart';


class TimeContain extends StatelessWidget {
  final String title;

  TimeContain({this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .2,
      height: size.height * .05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: mainColorTravelIo,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

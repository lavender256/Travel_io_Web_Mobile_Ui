import 'package:flutter/material.dart';

import '../colors.dart';

class HomeScreenSearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * .07),
      height: size.height * .1,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: mainColorTravelIo.withOpacity(.5),
                offset: Offset(0, 2),
                blurRadius: 16)
          ]),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              hintText: "Search  Tour  City  Hotel...",
              hintStyle: TextStyle(
                fontSize: size.width * .03,
                color: mainColorTravelIo,
                fontWeight: FontWeight.w900,
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_io/widgets/home_screen_search_field.dart';
import '../colors.dart';
import 'home_screen_header_clipper.dart';

class HomeScreenMobileMainHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Container(
        height: size.height * .28,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              left: 0,
              top: 0,
              child: ClipPath(
                clipper: HeaderClipper(),
                child: Container(
                  height: size.height * .27,
                  width: size.width,
                  color: mainColorTravelIo,
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                left: size.width * .11,
                right: size.width * .11,
                child: HomeScreenSearchField()),
            Positioned(
              left: size.width * .34,
              right: size.width * .34,
              top: size.height*.1,
              child: Text(
                "Travel.io",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * .07,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}

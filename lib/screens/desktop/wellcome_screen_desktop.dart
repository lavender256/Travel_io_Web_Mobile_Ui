import 'package:flutter/material.dart';
import 'package:travel_io/screens/mobile/nav_screen.dart';

import '../../colors.dart';


class WellComeScreenDesktop extends StatefulWidget {
  @override
  _WellComeScreenDesktopState createState() => _WellComeScreenDesktopState();
}

class _WellComeScreenDesktopState extends State<WellComeScreenDesktop> {
  PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: NetworkImage(
                    "https://i.postimg.cc/8k6FtG9f/free-and-easy-travel-with-vietnam-visa-on-arrival.jpg"),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Container(width: size.width,height: size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black.withOpacity(.7),
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.3),
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent
                ]),
              ),
            ),
            Positioned(
                bottom: size.height * .01,
                right: 0,
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => NavScreen())),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * .06,
                        vertical: size.height * .01),
                    height: size.height * .11,
                    width: size.width * .5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25))),
                    child: Center(
                      child: Text(
                        "Explore Now",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,fontSize: size.width*.05,
                            color: mainColorTravelIo),
                      ),
                    ),
                  ),
                )),
            Positioned(
                top: size.height * .5,
                left: size.width * .1,
                child: Container(
                  height: size.height * .3,
                  width: size.width * .8,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ENJOY THE",
                          style: TextStyle(
                              color: menuColorTravelIo,
                              fontWeight: FontWeight.bold,
                              fontSize: size.width * .14),
                        ),
                        Text(
                          "WORLD",
                          style: TextStyle(
                              color: menuColorTravelIo,
                              fontWeight: FontWeight.bold,
                              fontSize: size.width * .14),
                        )
                      ]),
                )),
            Positioned(
                top: size.height*.05,
                left: size.width*.05,
                child: Text("Travel.io",style: TextStyle(color: mainColorTravelIo,fontWeight: FontWeight.w800,fontSize: size.width*.1),))
          ],
        ),
      ),
    );
  }
}

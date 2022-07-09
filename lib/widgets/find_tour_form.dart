import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_io/widgets/responsive.dart';
import '../colors.dart';
import 'drop_down.dart';
import 'find_tour_count.dart';

class FindTourForm extends StatefulWidget {
  @override
  _FindTourFormState createState() => _FindTourFormState();
}

class _FindTourFormState extends State<FindTourForm> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(color: Responsive.isDesktop(context)
          ? Colors.white.withOpacity(.5)
          : scaffoldColorTravelIo,
        image: Responsive.isMobile(context)?DecorationImage(
          image: NetworkImage("https://i.postimg.cc/PJ54DT98/paszamine-com-1688-Full-HD.jpg"),fit: BoxFit.cover
        ):null
      ),

      height: Responsive.isMobile(context) ? size.height : size.height * .78,
      width: Responsive.isMobile(context) ? size.width : size.width * .32,
      padding: EdgeInsets.symmetric(
          horizontal: size.width * .04, vertical: size.height * .02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "FIND YOUR TOUR",
            style: TextStyle(
                color: mainColorTravelIo,
                fontWeight: FontWeight.bold,
                fontSize: Responsive.isMobile(context)
                    ? size.width * .07
                    : size.width * .015),
          ),
          DropDown(
            isRadius: true,
            isCenter: false,
            hint: "New York",
            title: "From",
            width: size.width,
          ),
          DropDown(
            isRadius: true,
            isCenter: false,
            hint: "Barcelona",
            title: "To",
            width: size.width,
          ),
          Container(
            height: size.height * .13,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Date",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: Responsive.isDesktop(context)
                          ? size.width * .11
                          : size.width * .4,
                      height: Responsive.isMobile(context)
                          ? size.height * .1
                          : size.height * .08,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: Text(
                          "Choose the Date",
                          style: TextStyle(
                              color: mainColorTravelIo,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )),
                DropDown(
                  isRadius: true,
                  width: Responsive.isDesktop(context)
                      ? size.width * .12
                      : size.width * .45,
                  hint: "Any Lengths",
                  title: "Duration",
                  isCenter: true,
                ),
              ],
            ),
          ),
          Container(
            height: size.height * .13,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FindTourCount(
                  title: "Adults",
                  count: 1,
                ),
                FindTourCount(
                  count: 0,
                  title: "Child",
                )
              ],
            ),
          ),
          Container(
            width: size.width,
            height: size.height * .08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: mainColorTravelIo),
            child: Center(
              child: Text(
                "Search Flights",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

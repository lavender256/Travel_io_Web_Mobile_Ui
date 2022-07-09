import 'package:flutter/material.dart';
import 'package:travel_io/data/data.dart';
import 'package:travel_io/screens/desktop/city_screen_desktop.dart';

import '../colors.dart';
import '../model.dart';

class TourImageView extends StatefulWidget {

  @override
  _TourImageViewState createState() => _TourImageViewState();
}

class _TourImageViewState extends State<TourImageView> {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * .5,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
          horizontal: size.width * .02, vertical: size.height * .02),
      child: Row(
        children: [
          Container(
            width: size.width*.19,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Awsome Tours",
                  style: TextStyle(
                      color: mainColorTravelIo,
                      fontSize: size.width * .02,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "We after choose the distination\nShow Best Tours and Hotels \nand Traveling to You ",
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: size.width * .01,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: size.height * .05,
                  width: size.width * .08,
                  color: mainColorTravelIo,
                  child: Center(
                    child: Text(
                      "Explore More",
                      style: TextStyle(
                          color: menuColorTravelIo, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: size.height*.4,
            width: size.width * .77,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tourList.length,
                itemBuilder: (context, index) {
                  Tour tour = tourList[index];
                  return GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(right: size.width * .015),
                      width: size.width*.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: NetworkImage(tour.imageUrl),
                              fit: BoxFit.cover)),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: size.width * .008),
                                height: size.height * .12,
                                width: size.width * .15,
                                decoration: BoxDecoration(
                                    color: mainColorTravelIo.withOpacity(.8),
                                    borderRadius: BorderRadius.only(  topLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      tour.name,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * .011),
                                    ),
                                    Text(
                                      tour.country,
                                      style: TextStyle(
                                          fontSize: size.width * .013,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

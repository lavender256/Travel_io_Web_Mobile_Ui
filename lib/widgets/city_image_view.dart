import 'package:flutter/material.dart';
import 'package:travel_io/data/data.dart';
import 'package:travel_io/screens/desktop/city_screen_desktop.dart';

import '../colors.dart';
import '../model.dart';

class CityImageView extends StatefulWidget {

  @override
  _CityImageViewState createState() => _CityImageViewState();
}

class _CityImageViewState extends State<CityImageView> {


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
                  'Top Destinations',
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
                itemCount: cityList.length,
                itemBuilder: (context, index) {
                  Destination destination = cityList[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => CityScreenDesktop(
                              destination: destination,
                            ))),
                    child: Container(
                      margin: EdgeInsets.only(right: size.width * .015),
                      width: size.width * .15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: NetworkImage(destination.imageUrl),
                              fit: BoxFit.cover)),
                      child: Stack(
                        children: [
                          Positioned(
                              bottom: 0,
                              left: 0,
                              child: Container(
                                padding: EdgeInsets.only(
                                    bottom: size.width * .008,
                                    left: size.width * .008),
                                height: size.height * .1,
                                width: size.width * .1,
                                decoration: BoxDecoration(
                                    color: mainColorTravelIo.withOpacity(.7),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(25),
                                        topRight: Radius.circular(25))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      destination.city,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * .011),
                                    ),
                                    Text(
                                      destination.country,
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

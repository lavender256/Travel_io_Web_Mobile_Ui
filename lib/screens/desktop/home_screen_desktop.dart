
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_io/data/data.dart';
import 'package:travel_io/widgets/app_bar_desktop.dart';
import '../../colors.dart';
import '../../model.dart';
import 'city_screen_desktop.dart';
import '../find_tour_screen.dart';
class HomeScreenDesktop extends StatefulWidget {
  @override
  _HomeScreenDesktopState createState() => _HomeScreenDesktopState();
}

class _HomeScreenDesktopState extends State<HomeScreenDesktop> {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.centerRight,
                image: NetworkImage("https://i.postimg.cc/8k6FtG9f/free-and-easy-travel-with-vietnam-visa-on-arrival.jpg"),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(child: Container(  height: size.height ,
              width: size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(.7),
                    Colors.black.withOpacity(.4),
                    Colors.black.withOpacity(.1)
                  ], begin: Alignment.centerLeft, end: Alignment.center)
              ),
            )),
            Positioned(
                left: size.width * .03,
                top: size.height * .31,
                bottom: size.height * .31,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ENJOY THE\nWORLD",
                      style: TextStyle(
                          color: menuColorTravelIo,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * .05),
                    ),
                    SizedBox(
                      height: size.height * .03,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => FindTourScreen())),
                      child: Container(
                        height: size.height * .07,
                        width: size.width * .12,
                        decoration: BoxDecoration(
                          color: menuColorTravelIo,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Explore Now",
                            style: TextStyle(
                              fontSize: size.width*.011,
                                color: mainColorTravelIo,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1.15),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            Positioned(
                bottom: size.height * .49,
                right: size.width*.2,
                child: Container(
                  width: size.width*.07,
                  height: size.height*.07,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                )),
            Positioned(
                right: 0,
                bottom: size.height * .1,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * .02),
                    height: size.height * .45,
                    width: size.width * .3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top Destinations",
                          style: TextStyle(
                              color: mainColorTravelIo, fontWeight: FontWeight.bold,fontSize: size.width*.02),
                        ),
                        CarouselSlider.builder(
                            options: CarouselOptions(
                              enableInfiniteScroll: true,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 2)
                            ),
                            itemCount: cityList.length,
                            itemBuilder: (context, itemIndex, realIndex) {
                              Destination destination = cityList[itemIndex];
                              return GestureDetector(
                                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>CityScreenDesktop(destination: destination,))),
                                child: Container(
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(destination.imageUrl),
                                          fit: BoxFit.cover)),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          top: 0,
                                          right: 0,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                bottom: size.width * .008,
                                                left: size.width * .008),
                                            height: size.height * .09,
                                            width: size.width * .09,
                                            decoration: BoxDecoration(
                                                color: Colors.white.withOpacity(.7),
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(25))),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  destination.city,
                                                  style: TextStyle(
                                                      color: mainColorTravelIo,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: size.width * .011),
                                                ),
                                                Text(
                                                  destination.country,
                                                  style: TextStyle(
                                                      fontSize: size.width * .013,
                                                      color: mainColorTravelIo,
                                                      fontWeight: FontWeight.w900),
                                                )
                                              ],
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              );
                            })
                      ],
                    ))),

            Positioned(top: 0, right: 0, left: 0, child: AppBarDesktop(isWhite: true,)),
          ],
        ),
      ),
    );
  }
}

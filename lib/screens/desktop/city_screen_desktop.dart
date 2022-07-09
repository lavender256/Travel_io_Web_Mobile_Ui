import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_io/data/data.dart';
import 'package:travel_io/widgets/app_bar_desktop.dart';

import '../../colors.dart';
import '../../model.dart';

class CityScreenDesktop extends StatefulWidget {
  final Destination destination;

  CityScreenDesktop({this.destination});

  @override
  _CityScreenDesktopState createState() => _CityScreenDesktopState();
}

class _CityScreenDesktopState extends State<CityScreenDesktop> {
  int activeIndex = 0;
  CarouselController controller = CarouselController();
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(widget.destination.imageUrl2),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1)
              ], begin: Alignment.centerLeft, end: Alignment.center)),
            ),
            Positioned(
                left: size.width * .08,
                bottom: size.height * .15,
                child: Container(
                    height: size.height * .44,
                    width: size.width * .35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.destination.city,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * .05,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          widget.destination.country,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width * .07,
                              fontWeight: FontWeight.w900),
                        ),
                        Container(
                          width: size.width * .14,
                          height: size.height * .08,
                          color: mainColorTravelIo,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Find a Tour",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * .012,
                                    letterSpacing: 1.1),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white70,
                              )
                            ],
                          ),
                        )
                      ],
                    ))),
            Positioned(
                right: size.width*.02,
                bottom: size.height * .05,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * .02),
                    height: size.height * .75,
                    width: size.width * .4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Available Hotels",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: size.width * .02),
                        ),
                        SizedBox(
                          height: size.height * .04,
                        ),
                        CarouselSlider.builder(
                            carouselController: controller,
                            options: CarouselOptions(
                                initialPage: 0,
                                enableInfiniteScroll: true,
                                enlargeCenterPage: true,
                                autoPlay: true,
                                autoPlayInterval: Duration(milliseconds: 3000),
                                height: size.height * .5,
                                onPageChanged: (index, reason) =>
                                    setState(() => activeIndex = index)),
                            itemCount: hotelList.length,
                            itemBuilder: (context, itemIndex, realIndex) {
                              Hotel hotel = hotelList[itemIndex];
                              return InkWell(
                                onTap: () {},
                                onHover: (val) {
                                  setState(() {
                                    isHover = val;
                                  });
                                },
                                child: isHover
                                    ? Container(
                                        height: size.height * .5,
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image:
                                                    NetworkImage(hotel.imageUrl),
                                                fit: BoxFit.cover)),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              top: 0,right: 0,
                                              child: Container(
                                                padding: EdgeInsets.only(left: size.width*.01),
                                                height: size.height * .15,
                                                width: size.width*.12,
                                               decoration: BoxDecoration(
                                                 color: mainColorTravelIo
                                                     .withOpacity(.9),
                                                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25))
                                               ),
                                                child:  Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        hotel.name,
                                                        style: TextStyle(fontSize: size.width*.015,
                                                            color: Colors.white,
                                                            fontWeight:
                                                            FontWeight.bold),
                                                      ),
                                                      Text(
                                                        '${hotel.price}\$\nper night',
                                                        style: TextStyle(fontSize: size.width*.01,
                                                            color: Colors.white,
                                                            fontWeight:
                                                            FontWeight.bold),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    : Container(
                                        height: size.height * .5,
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image:
                                                    NetworkImage(hotel.imageUrl),
                                                fit: BoxFit.cover)),
                                      ),
                              );
                            }),
                        SizedBox(
                          height: size.height * .03,
                        ),
                        AnimatedSmoothIndicator(
                          activeIndex: activeIndex,
                          count: hotelList.length,
                          onDotClicked: (int index) =>
                              controller.animateToPage(index),
                          effect:
                              SlideEffect(activeDotColor: mainColorTravelIo),
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        Container(
                          width: size.width * .15,
                          height: size.height * .1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => controller.previousPage(),
                                child: Container(
                                  width: size.width * .07,
                                  height: size.height * .07,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: mainColorTravelIo),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => controller.nextPage(),
                                child: Container(
                                  width: size.width * .07,
                                  height: size.height * .07,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: mainColorTravelIo),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))),
            Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: AppBarDesktop(
                  isWhite: true,
                )),
          ],
        ),
      ),
    );
  }
}

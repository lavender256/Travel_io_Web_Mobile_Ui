import 'package:flutter/material.dart';
import 'package:travel_io/widgets/app_bar_desktop.dart';
import 'package:travel_io/widgets/city_image_view.dart';
import 'package:travel_io/widgets/find_tour_form.dart';
import 'package:travel_io/widgets/tour_image_view.dart';

class FindTourScreenDesktop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {  var size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * .95,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://i.postimg.cc/RZXL1tbT/215-2157127-travel.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Stack(
                children: [

                  Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: AppBarDesktop(isWhite: false,)),
                  Positioned(
                      right: size.width * .04,
                      top: size.height * .15,
                      child: FindTourForm()),
                  Positioned(
                      left: size.width * .08,
                      bottom: size.height * .15,
                      child: Container(
                        width: size.width * .45,
                        height: size.height * .35,
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "THE TRIP OF YOUR DREAM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * .03,
                                  letterSpacing: 1.1),
                            ),
                            Container(
                              width: size.width * .05,
                              height: 6,
                              color: Colors.white,
                            ),
                            Text(
                              'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\n'
                                  'dragon, Sintel decides to embark on a dangerous quest to find\n'
                                  'her lost friend Scales.',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: size.width * .01,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.1),
                            ),
                            Container(
                              width: size.width * .11,
                              height: size.height * .07,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(25),
                                  border: Border.all(
                                      color: Colors.white,
                                      width: 3)),
                              child: Center(
                                child: Text(
                                  "Learn More",
                                  style: TextStyle(
                                      letterSpacing: 1.2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
            CityImageView(),
            SizedBox(height: size.height*.03,),
            TourImageView()
          ],
        ),
      ),
    );
  }
}

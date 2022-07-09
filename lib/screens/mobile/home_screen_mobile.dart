import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:travel_io/data/data.dart';
import 'package:travel_io/widgets/destination_card_mobile.dart';
import 'package:travel_io/widgets/see_all.dart';
import 'package:travel_io/widgets/tour_card_mobile.dart';
import 'package:travel_io/widgets/home_screen_mobile_main_header.dart';
import '../../colors.dart';
import '../../model.dart';
import 'city_screen_mobile.dart';

class HomeScreenMobile extends StatefulWidget {
  @override
  _HomeScreenMobileState createState() => _HomeScreenMobileState();
}

int selectedIndex = 0;

class _HomeScreenMobileState extends State<HomeScreenMobile> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
      return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: scaffoldColorTravelIo,
            child: Stack(
              children: [
                SingleChildScrollView(physics: BouncingScrollPhysics(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       HomeScreenMobileMainHeader(),
                        SizedBox(
                          height: size.height * .03,
                        ),
                        SeeAll(title: 'Top Destinations'),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: size.width * .04),
                          height: size.height * .365,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: cityList.length,
                              itemBuilder: (context, index) {
                                Destination city = cityList[index];
                                return GestureDetector(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CityScreenMobile(
                                                  city: city,
                                                ))),
                                    child: DestinationsCardMobile(
                                      destination: city,
                                    ));
                              }),
                        ),
                        SizedBox(
                          height: size.height * .03,
                        ),
                        SeeAll(title: 'Awsome Tours'),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: size.width * .04),
                          height: size.height * .3,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: tourList.length,
                              itemBuilder: (context, index) {
                              Tour tour = tourList[index];
                                return TourCardMobile(tour: tour);
                              }),
                        ),
                        SizedBox(
                          height: size.height * .03,
                        ),
                      ]),
                ),
              ],
            )),
      );
  }


  Widget MyTile(IconData icon, String title, VoidCallback voidCallback) {
    return Column(
      children: [
        ListTile(
          tileColor: Colors.black.withOpacity(.08),
          leading: CircleAvatar(
            backgroundColor: Colors.black12,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          onTap: voidCallback,
          title: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          trailing: Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
        ),
        divider()
      ],
    );
  }

  Widget divider() {
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width,
    );
  }
}

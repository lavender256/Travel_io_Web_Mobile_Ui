import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_io/data/data.dart';
import 'package:travel_io/widgets/app_bar_desktop.dart';
import 'package:travel_io/widgets/details_main_pic.dart';
import 'package:travel_io/widgets/hotels_card.dart';

import '../../colors.dart';
import '../../model.dart';

class CityScreenMobile extends StatefulWidget {
  final Destination city;

  CityScreenMobile({this.city});

  @override
  _CityScreenMobileState createState() => _CityScreenMobileState();
}

class _CityScreenMobileState extends State<CityScreenMobile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: DetailsMainPic(
                destination: widget.city,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: size.height * .02,horizontal: size.width*.04),
                child: Text(
                  "Available Hotelss",
                  style: TextStyle(
                      color: mainColorTravelIo,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.05),
                ),
              ),
            ),
           SliverList(
               delegate: SliverChildBuilderDelegate((
                 context, index) {
                  Hotel hotel = hotelList[index];
                  return HotelsCard(hotel: hotel, city: widget.city);
                },childCount: hotelList.length)),
          ],
        ),
      ),
    );
  }
}

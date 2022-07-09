import 'package:flutter/material.dart';
import 'package:travel_io/colors.dart';

import '../model.dart';

class TourCardMobile extends StatefulWidget {
  final Tour tour;

  TourCardMobile({this.tour});

  @override
  _TourCardMobileState createState() => _TourCardMobileState();
}

class _TourCardMobileState extends State<TourCardMobile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(margin:
          EdgeInsets.only(right: size.width * .04, top: size.height * .03),
            height: size.height * .3,
            width: size.width * .9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    alignment: Alignment.center,
                    image: NetworkImage(widget.tour.imageUrl),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(padding: EdgeInsets.symmetric(horizontal: size.width*.02,vertical: size.height*.01),
                    decoration: BoxDecoration(
                        color: mainColorTravelIo.withOpacity(.6),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),topLeft: Radius.circular(25))
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.tour.name,
                          style: TextStyle(
                              fontSize: size.width * .06,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.tour.country,
                          style: TextStyle(
                              color: Colors.white, fontSize: size.width * .05),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ));

  }
}

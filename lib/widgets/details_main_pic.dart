import 'package:flutter/material.dart';

import '../colors.dart';
import '../model.dart';


class DetailsMainPic extends StatefulWidget {
  final Destination destination;

  DetailsMainPic({this.destination});

  @override
  _DetailsMainPicState createState() => _DetailsMainPicState();
}

class _DetailsMainPicState extends State<DetailsMainPic> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * .45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(widget.destination.imageUrl))),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              margin: EdgeInsets.only(top: screenHeight * .035),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back, color: mainColorTravelIo),
                      onPressed: () => Navigator.pop(context)),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * .02,
            left: screenHeight * .02,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.destination.city,
                  style: TextStyle(
                      fontSize: screenWidth * .08,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Text(
                      widget.destination.country,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: screenWidth * .06,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

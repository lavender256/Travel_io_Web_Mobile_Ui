import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_io/colors.dart';

import '../model.dart';


class DestinationsCardMobile extends StatefulWidget {

final Destination destination;

DestinationsCardMobile({this.destination});

  @override
  _DestinationsCardMobileState createState() => _DestinationsCardMobileState();
}

class _DestinationsCardMobileState extends State<DestinationsCardMobile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .55,
      margin: EdgeInsets.only(right: size.width * .03),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container( width: size.width * .45,
              padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(7)
            ),
              height: size.height * .12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '13  Hotels',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    '6 Tour   in   month',
                    maxLines: 2,
                    style: TextStyle(color: mainColorTravelIo,fontWeight: FontWeight.w900),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: size.height * .02,
              right: size.width * .02,
              left: size.width * .02,
              child: Stack(
                children: [
                  Container(
                    height: size.height * .24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: NetworkImage(widget.destination.imageUrl),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: size.width*.04,vertical: size.height*.01),
                      decoration: BoxDecoration(
                          color: mainColorTravelIo.withOpacity(.6),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),topRight: Radius.circular(25))
                      ),
                      child: Column(
                        children: [
                          Text(
                           widget.destination.city
                            ,style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.destination.country,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

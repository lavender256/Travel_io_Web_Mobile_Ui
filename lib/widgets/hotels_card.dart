import 'package:flutter/material.dart';
import 'package:travel_io/widgets/time_contain.dart';

import '../colors.dart';
import '../model.dart';


class HotelsCard extends StatefulWidget {
  final Hotel hotel;
final Destination city;

  HotelsCard({this.hotel,this.city});

  @override
  _HotelsCardState createState() => _HotelsCardState();
}

class _HotelsCardState extends State<HotelsCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: size.height * .02),
      height: size.height * .25,
      child: Stack(
        children: [
          Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(left: size.width * .1),
                height: size.height * .25,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          color: mainColorTravelIo.withOpacity(.7),
                          offset: Offset(-10, 0),
                          blurRadius: 33)
                    ]),
              )),
          Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * .01,
                      vertical: size.height * .02),
                  height: size.height * .25,
                  margin: EdgeInsets.only(left: size.width * .45),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.hotel.name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width * .055,
                                  fontWeight: FontWeight.bold)),
                          Text("${widget.hotel.price }\$",
                              style: TextStyle(
                                  color:mainColorTravelIo,
                                  fontSize: size.width * .055,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(height: size.height*.01,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.city.city,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width * .055,
                                  fontWeight: FontWeight.bold)),
                          Text('per night',
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: size.width * .03,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TimeContain(title:"9:00 am"),
                          TimeContain(title:"11:00 am")
                        ],
                      )
                    ],
                  ))),
          Positioned(
              left: size.width * .04,
              top: size.width * .02,
              bottom: size.width * .02,
              child: Container(
                width: size.width * .4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(widget.hotel.imageUrl))),
              ))
        ],
      ),
    );
  }
}

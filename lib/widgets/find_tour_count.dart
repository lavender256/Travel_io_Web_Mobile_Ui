import 'package:flutter/material.dart';
import 'package:travel_io/widgets/responsive.dart';

import '../colors.dart';

class FindTourCount extends StatefulWidget {
  final String title;
  final int count;

  FindTourCount({this.title, this.count});

  @override
  _FindTourCountState createState() => _FindTourCountState();
}

class _FindTourCountState extends State<FindTourCount> {
  int countnumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countnumber = widget.count;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal:Responsive.isMobile(context)? size.width * .02:0),
              width: Responsive.isDesktop(context)?size.width*.11:size.width*.43,
              height: Responsive.isMobile(context)?size.height * .1:size.height*.08,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.add,
                        color: mainColorTravelIo,
                      ),
                      onPressed: () {
                        setState(() {
                          countnumber++;
                        });
                      }),
                  Text(
                    countnumber.toString(),
                    style: TextStyle(
                        color: mainColorTravelIo,
                        fontWeight: FontWeight.bold,
                        fontSize:Responsive.isMobile(context)?size.width * .05:size.width*.01),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.minimize,
                        color: mainColorTravelIo,
                      ),
                      onPressed: () {
                        setState(() {
                          if (countnumber > 0) {
                            countnumber--;
                          }
                        });
                      })
                ],
              ),
            )
          ])
    );
  }
}

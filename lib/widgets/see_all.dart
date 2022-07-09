import 'package:flutter/material.dart';

import '../colors.dart';

class SeeAll extends StatelessWidget {
final String title;

SeeAll({this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width*.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: size.width * .05,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'See All',
            style: TextStyle(
                color: mainColorTravelIo,
                fontWeight: FontWeight.bold,fontSize: size.width*.04),
          )
        ],
      ),
    );
  }
  }


import 'package:flutter/material.dart';

import '../colors.dart';


class PriceTab extends StatefulWidget {
  final String price;

  PriceTab({this.price});
  @override
  _PriceTabState createState() => _PriceTabState();
}

class _PriceTabState extends State<PriceTab> {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Center(
        child: Container(
          width: size.width * .4,
          height: size.width * .4,
          decoration: BoxDecoration(shape: BoxShape.circle,color: mainColorTravelIo),
          child: Center(child: Text("${widget.price}\$",style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.bold,fontSize: size.width*.1
          ),),),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../colors.dart';


class WheatherTab extends StatelessWidget {
  final String status;
final IconData icon;
  WheatherTab({this.status,this.icon});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon,
                color: mainColorTravelIo,
                size: size.width * .2,
              ),
              Text(
                status,
                style: TextStyle(
                    color: mainColorTravelIo,
                    fontWeight: FontWeight.w900,
                    fontSize: size.width * .08),
              )
            ]),
      ),
    );
  }
}

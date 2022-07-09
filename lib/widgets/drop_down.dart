import 'package:flutter/material.dart';
import 'package:travel_io/widgets/responsive.dart';

import '../colors.dart';

class DropDown extends StatefulWidget {
  final double width;
  final String hint;
  final String title;
  final bool isCenter;
  final bool isRadius;


  DropDown({this.width, this.hint, this.title, this.isCenter, this.isRadius});

  @override
  _DropDownState createState() => _DropDownState();
}

var city = [
  'Bareclona',
  'Paris',
  'London',
  'Berlin',
  'Shiraz',
  'Tokyo',
  'Venice',
  'Palermo',
  'Milan',
  'Madrid',
  'Hong kung',
  'Dubai',
  'Istanbul',
  'Rome',
  'Lisbon',
  'New York',
  'Singapur',
];

class _DropDownState extends State<DropDown> {
  String buttonSelectVal;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal:Responsive.isMobile(context)?size.width * .02:0),
      height: size.height * .13,
      width: widget.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment:widget.isCenter?CrossAxisAlignment.center:CrossAxisAlignment.start,
        children: [
          Text(
           widget.title,
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * .02),
            width: size.width,
            height: Responsive.isMobile(context)? size.height * .1:size.height*.08,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:widget.isRadius?BorderRadius.circular(25):BorderRadius.zero
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  dropdownColor: Colors.white,
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: mainColorTravelIo,
                  ),
                  value: buttonSelectVal,
                  hint: Text(widget.hint,style: TextStyle(color: mainColorTravelIo,fontWeight: FontWeight.bold,fontFamily: 'Vara',),),
                  style: TextStyle(color: Colors.black45,  fontFamily: 'Vara',fontWeight: FontWeight.bold),
                  onChanged: (String newValue) {
                    setState(() {
                      buttonSelectVal = newValue;
                    });
                  },
                  items: city.map((String items) {
                    return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(
                              color:mainColorTravelIo, fontWeight: FontWeight.bold),
                        ));
                  }).toList()),
            ),
          )
        ],
      ),
    );
  }
}

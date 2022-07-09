import 'package:flutter/material.dart';
import 'package:travel_io/screens/desktop/home_screen_desktop.dart';
import 'package:travel_io/screens/desktop/login_screen_desktop.dart';

import '../colors.dart';


class AppBarDesktop extends StatelessWidget {
  final bool isWhite;
  AppBarDesktop({this.isWhite});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * .02),
      color: Colors.transparent,
      height: size.height * .12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Travel io.",
            style: TextStyle(
                color:  isWhite?Colors.white:mainColorTravelIo,
                fontWeight: FontWeight.bold,
                fontSize: size.width * .025),
          ),
          Spacer(),
      GestureDetector(
        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreenDesktop())),
          child:
          Container(padding: EdgeInsets.all(size.width*.007),
          decoration: BoxDecoration(
            color: mainColorTravelIo,
            borderRadius: BorderRadius.circular(15)
          ),
            child: Text(
              "HOME",
              style: TextStyle(
                  color:  menuColorTravelIo,
                  fontSize: size.width * .01,
                  fontWeight: FontWeight.w700),
            ),
          )),

          SizedBox(
            width: size.width * .03,
          ),
          Text(
            "TOUR SEARCH",
            style: TextStyle(letterSpacing: 1.2,
                color:  menuColorTravelIo,
                fontSize: size.width * .01,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: size.width * .025,
          ),
          Text(
            "HOTELS",
            style: TextStyle(letterSpacing: 1.2,
                color:  menuColorTravelIo,
                fontSize: size.width * .01,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: size.width * .025,
          ),
          Text(
            "BOOKINGS",
            style: TextStyle(letterSpacing: 1.2,
                color: menuColorTravelIo,
                fontSize: size.width * .01,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: size.width * .025,
          ),
          Text(
            "CONTACT US",
            style: TextStyle(letterSpacing: 1.2,
                color: menuColorTravelIo,
                fontSize: size.width * .01,
                fontWeight: FontWeight.w700),
          ),

          SizedBox(
            width: size.width * .025,
          ),
      GestureDetector(
        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreenDesktop())),
        child:
          Text(
            "LOGIN",
            style: TextStyle(letterSpacing: 1.2,
                color:  menuColorTravelIo,
                fontSize: size.width * .01,
                fontWeight: FontWeight.w700),
          )),
          SizedBox(
            width: size.width * .025,
          ),
          Container(
            width: size.width*.12,
            height: size.height*.09,
            child: TextFormField(
              cursorColor: menuColorTravelIo,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,color:  mainColorTravelIo,),
                  hintText: "Search",
                  hintStyle: TextStyle(
                      color:  mainColorTravelIo, fontWeight: FontWeight.w600),
                  fillColor: Colors.transparent,
                  filled: true,
                enabledBorder: InputBorder.none
              ),

            ),
          ),
          SizedBox(
            width: size.width * .017,
          ),
          Container(
            width: size.width*.03,
            height: size.width*.03,
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(10)
         ),
            child: Center(child: IconButton(
              icon: Icon(Icons.menu,color: Colors.black,),
            ),),
          ),
          SizedBox(
            width: size.width * .01,
          ),
        ],
      ),
    );
  }
}

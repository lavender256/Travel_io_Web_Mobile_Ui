import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_io/widgets/boarding_image_clipper.dart';
import 'package:travel_io/widgets/login_form_field.dart';

import '../../colors.dart';
import 'nav_screen.dart';
class LoginScreenMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            width: size.width,
            height: size.height,
            child: Stack(children: [
              ClipPath(
                  clipper: OnBoardingImageClipper(),
                  child: Container(
                    width: size.width,
                    height: size.height * .65,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://i.postimg.cc/qMxw1S50/6989341-hill-top-mountain-sky.jpg"),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                mainColorTravelIo.withOpacity(.8),
                                mainColorTravelIo.withOpacity(.05)
                              ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter)),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  right: size.width * .05,
                  top: size.height * .5,
                  child: Text(
                    "Login".toUpperCase(),
                    style: TextStyle(
                        color: mainColorTravelIo.withOpacity(.7),
                        fontWeight: FontWeight.w900,
                        fontSize: size.width * .1,
                        letterSpacing: 0.5),
                  )),
              Positioned(
                bottom: size.height * .28,
                right: size.width * .17,
                left: size.width * .17,
                child: LoginFormField(
                  hint: "User Name",
                  icon: Icon(
                    Icons.person,
                    color: mainColorTravelIo,
                  ),
                ),
              ),
              Positioned(
                right: size.width * .17,
                left: size.width * .17,
                bottom: size.height * .16,
                child: LoginFormField(
                  hint: "Password",
                  icon: Icon(
                    Icons.lock,
                    color: mainColorTravelIo,
                  ),
                ),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => NavScreen())),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * .06,
                          vertical: size.height * .01),
                      height: size.height * .11,
                      decoration: BoxDecoration(
                          color: mainColorTravelIo,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "SIGN IN",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: size.width * .06,
                                  color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ]),
                    ),
                  ))
            ])));
  }
}

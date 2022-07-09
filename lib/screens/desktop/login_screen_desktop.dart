import 'package:flutter/material.dart';
import 'package:travel_io/widgets/login_form_field.dart';

import '../../colors.dart';
import 'home_screen_desktop.dart';

class LoginScreenDesktop extends StatefulWidget {
  @override
  _LoginScreenDesktopState createState() => _LoginScreenDesktopState();
}

class _LoginScreenDesktopState extends State<LoginScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                mainColorTravelIo,
                Colors.white,
              ],

            )
          ),
          child: Center(
            child: Container(
                width: size.width*.9,
                height: size.height*.9,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://i.postimg.cc/qMxw1S50/6989341-hill-top-mountain-sky.jpg"),
                        fit: BoxFit.cover)),
                child: Stack(children: [
                  Positioned(
                      left: 0,
                      child: Container(
                        width: size.width * .6,
                        height: size.height,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.5),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: size.width * .35,
                            height: size.height * .7,
                            decoration: BoxDecoration(
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Travel.io",
                                  style: TextStyle(
                                      color: mainColorTravelIo,
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * .03),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * .02),
                                  width: size.width * .25,
                                  height: size.height * .55,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: mainColorTravelIo)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      LoginFormField(
                                        hint: "Username",
                                        icon: null,
                                      ),
                                      LoginFormField(
                                        hint: "Password",
                                        icon: null,
                                        isPassword: true,
                                      ),
                                      Text(
                                        "forgot password?",
                                        style: TextStyle(
                                            color: mainColorTravelIo,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      GestureDetector(
                                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreenDesktop())),
                                        child: Container(
                                          width: size.width,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: size.width * .06,
                                              vertical: size.height * .01),
                                          height: size.height * .07,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: mainColorTravelIo,width: 2)
                                            ),
                                          child: Center(
                                            child: Text(
                                              "SIGN IN",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: size.width * .01,
                                                  color: mainColorTravelIo),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "You have not any Account ?! So Create one",
                                        style: TextStyle(
                                            color: mainColorTravelIo,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: size.height * .02),
                          height: size.height,
                          width: size.width * .45,
                        color: Colors.black.withOpacity(.2),
                         )),
                  Positioned(
                    right: size.width * .13,
                    top: size.height * .27,
                    child: Container(
                      width: size.width * .3,
                      height: size.height * .3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "WellCome Back to",
                                style: TextStyle(
                                  fontFamily: 'Vara',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * .017)),
                            TextSpan(
                                text: " Travel.io",
                                style: TextStyle(  fontFamily: 'Vara',
                                    color: mainColorTravelIo,
                                    fontWeight: FontWeight.w900,
                                    fontSize: size.width * .018)),
                          ])),
                          Divider(
                            thickness: 3,
                            color: Colors.white,
                            endIndent: 120,
                          ),
                          Text(
                            'A lonely young woman, Sintel, helps and befriends\na dragon,whom she calls Scales.But when\n he is kidnapped by an adult',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width * .011,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.1),
                          ),
                          Container(
                            height: size.height * .05,
                            width: size.width * .1,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white,width: 2)),
                            child: Center(
                              child: Text(
                                "Read More...",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ])),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:travel_io/widgets/responsive.dart';

import '../colors.dart';

class LoginFormField extends StatelessWidget {
  final String hint;
  final Icon icon;
  final bool isPassword;

  LoginFormField({this.hint, this.icon, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .7,
      height: size.height * .09,
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
            filled: true,
            fillColor: Responsive.isMobile(context)
                ? mainColorTravelIo.withOpacity(.1)
                : Colors.transparent,
            hintStyle: TextStyle(color: mainColorTravelIo, fontWeight: FontWeight.bold),
            hintText: hint,
            suffixIcon: icon,
            enabledBorder: OutlineInputBorder(
                borderRadius: Responsive.isMobile(context)
                    ? BorderRadius.circular(10)
                    : BorderRadius.circular(0),
                borderSide: BorderSide.none),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: mainColorTravelIo))),
      ),
    );
  }
}

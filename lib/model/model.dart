import 'package:flutter/material.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String imageUrl2;

  Destination({this.imageUrl, this.city, this.country,this.imageUrl2});
}

class Tour {
  String name;
  String country;
  String date;
  String price;
  String imageUrl;

  Tour({this.name, this.country, this.date, this.price,this.imageUrl});
}

class Hotel {
  String name;
  String imageUrl;
  String price;
  String startTime;
  String endTime;

  Hotel({this.name, this.imageUrl, this.price, this.startTime, this.endTime});
}

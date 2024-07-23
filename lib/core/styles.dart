import 'package:flutter/material.dart';

abstract class Fonts {
  static const textStyle1 = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontFamily: "Schyler",
      fontSize: 26);

  static const textStyle2 = TextStyle(
      //fontWeight: FontWeight.bold,
      color: Color.fromARGB(179, 0, 0, 0),
      //fontFamily: "Schyler",
      fontSize: 18);

  static const textStyle3 = TextStyle(
      //fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 0, 0, 0),
      //fontFamily: "Schyler",
      fontSize: 18,
      fontWeight: FontWeight.bold);

  static const dogName = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      // fontFamily: "Schyler",
      fontSize: 16);

  static const dogType = TextStyle(
      //fontWeight: FontWeight.bold,
      color: Color.fromARGB(179, 0, 0, 0),
      //fontFamily: "Schyler",
      fontSize: 18);

  static const dogAge = TextStyle(
      //fontWeight: FontWeight.bold,
      color: Color.fromARGB(167, 0, 0, 0),
      //fontFamily: "Schyler",
      fontSize: 13);

  static const first = TextStyle(
    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30, //fontFamily: 'Schyler',
    shadows: [
      Shadow(blurRadius: 5.0, color: Color.fromARGB(255, 94, 87, 87), offset: Offset(2, 2),)]);

  static const second = TextStyle(
      fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black38);

  static const third = TextStyle(
      color:Color.fromARGB(255, 114, 108, 108));
}

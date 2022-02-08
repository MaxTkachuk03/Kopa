import 'package:flutter/material.dart';
import 'package:ko_pa/view/Code.dart';
import 'package:ko_pa/view/Phone.dart';

const pad0 = EdgeInsets.fromLTRB(10, 17, 10, 0);

const pad = EdgeInsets.fromLTRB(25, 20, 25, 0);

const pdtxt  = EdgeInsets.fromLTRB(10, 10, 10, 10);

const stl =  TextStyle(
  //fontSize: 15,
  fontWeight: FontWeight.normal,
  color: Colors.white,
);
OutlineInputBorder enb = OutlineInputBorder(
    borderSide: const BorderSide(
        color: Colors.grey, width: 1.0),
    borderRadius: BorderRadius.circular(40.0));

OutlineInputBorder enbr = OutlineInputBorder(
    borderSide: const BorderSide(
        color: Colors.red, width: 1.0),
    borderRadius: BorderRadius.circular(40.0));

ButtonStyle bs = ButtonStyle(
    minimumSize:
    MaterialStateProperty.all<Size>(
        Size(100, 30)),
    backgroundColor:
    MaterialStateProperty.all<Color>(
        Colors.greenAccent),
    shape: MaterialStateProperty.all<
        RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(18.0),
      ),
    ),
  );

ButtonStyle but = ButtonStyle(
    minimumSize:
    MaterialStateProperty.all<Size>(Size(1000, 25)),
    backgroundColor: MaterialStateProperty.all<Color>(
        Colors.greenAccent),
    shape: MaterialStateProperty.all<
        RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
    ),
    //backgroundColor: Colors.greenAccent,
  );

 const text = TextStyle(
   color: Colors.white,
   fontSize: 20.0,
   fontWeight: FontWeight.normal,
 );
  const brd = BorderRadius.only(
      topLeft: Radius.circular(40.0),
      topRight: Radius.zero,
      bottomLeft: Radius.circular(40.0),
      bottomRight: Radius.zero);

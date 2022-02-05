import 'package:flutter/material.dart';

const image = Image(
  // width: 1000,
  image: AssetImage("assets/Kopa1.png"),
);
Stack vv = Stack(
  alignment: Alignment.center,
  children: [
    Image(
      image: AssetImage("assets/H.png"),
    ),
    Align(
      alignment: Alignment.topCenter,
      child: Text(
        "Вхід",
        style: TextStyle(
          fontSize: 23,
          color: Colors.white,
          //background: Paint(
          //AssetImage("assets/Ellipse.png"),
          // )..shader //= Image.asset("assets/Ellipse.png") as Shader
        ),
      ),
    ),
  ],
);

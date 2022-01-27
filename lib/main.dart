import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'PhoneLogin/Phone.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  ));*/

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 10, right: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.topRight,
            colors: [
              Color.fromRGBO(29, 29, 33, 1),
              Color.fromRGBO(28, 28, 32, 1),
              Color.fromRGBO(30, 30, 33, 1),
              Color.fromRGBO(29, 29, 32, 1),
              Color.fromRGBO(31, 31, 34, 1),
              //Color.fromRGBO(41, 41, 46, 1),
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/Kopa1.png"),
              ),
              SizedBox(height: 30),
              Stack(
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
              ),
              /* Image(
                image: AssetImage("assets/H.png"),
              ),*/
              SizedBox(height: 50),
              Row(
                children: [
                  SizedBox(width: 36),
                  FloatingActionButton(
                    onPressed: () => {
                    Navigator.of(context).push(_createRoute()),
                    },
                    child: Icon(Icons.phone),
                    backgroundColor: Colors.lightGreen,
                  ),
                  SizedBox(width: 50),
                  FloatingActionButton(
                    onPressed: null,
                    backgroundColor: Colors.blue,
                    child: const Image(
                      image: AssetImage("assets/F.png"),
                    ),
                  ),
                  SizedBox(width: 50),
                  FloatingActionButton(
                    onPressed: null,
                    backgroundColor: Colors.red,
                    //child:const Text("G"),
                    child: const Image(
                      image: AssetImage("assets/G.png"),
                    ),
                  ),
                  SizedBox(width: 36),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Phone(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0,0.0);
      const end = Offset.zero;
      const curve = Curves.easeInCirc;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}


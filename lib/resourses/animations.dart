import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ko_pa/data/repositories/code_send.dart';
import 'package:ko_pa/data/repositories/phone_login.dart';
import 'package:ko_pa/view/Code.dart';
import 'package:ko_pa/view/Dan.dart';
import 'package:ko_pa/view/Phone.dart';
import 'package:ko_pa/view/Store.dart';
import 'package:ko_pa/view/main/main_controller.dart';
import 'package:ko_pa/view/main/main_screen.dart';

Route createRoute() {
  Random random = new Random();
  double random_number = random.nextDouble();
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const phonescreeen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(random_number, random_number);
      const end = Offset.zero;
      const curve = Curves.easeInBack;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route createRoute0() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Code(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(6.0, 6.0);
      const end = Offset.zero;
      const curve = Curves.decelerate;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route createRoute1() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Dani(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(3.0, 7.0);
      const end = Offset.zero;
      const curve = Curves.easeOutQuint;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Store(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(11.0, 11.0);
      const end = Offset.zero;
      const curve = Curves.linearToEaseOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route back0() {
  return MaterialPageRoute(builder: (context) => MyHomePage());
}

Route back() {
  return MaterialPageRoute(builder: (context) => phonescreeenState().getmobilephone(context));
}

Route back1() {
  return MaterialPageRoute(builder: (context) => Code());
}

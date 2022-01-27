import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget{
  const Store({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        
        //chipBuilder: ,
        style: TabStyle.fixedCircle,
        activeColor: Colors.cyanAccent,
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.center,
            colors: [
         // Color.fromRGBO(29, 29, 33, 1),
          //Color.fromRGBO(28, 28, 32, 1),
        //  Color.fromRGBO(30, 30, 33, 1),
        //  Color.fromRGBO(29, 29, 32, 1),
          Color.fromRGBO(31, 31, 34, 1),
          Color.fromRGBO(79, 79, 80, 1),
        ],
        ),
        items: [
          TabItem(icon: Icons.widgets),//title: 'Оголошення'),
          TabItem(icon: Icons.shop),
          TabItem(icon: Icons.add_box),
          TabItem(icon: Icons.message),
          TabItem(icon: Icons.settings),
        ],
        initialActiveIndex: 2,//optional, default as 0
        onTap: (int i) => print('click index=$i'),
      ),
      body: Container(
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
      ),
    );
  }
}
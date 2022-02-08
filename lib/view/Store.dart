import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:ko_pa/resourses/colors(gradients).dart';

class Store extends StatelessWidget{
  const Store({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        //chipBuilder: ,
        style: TabStyle.fixedCircle,
        activeColor: Colors.cyanAccent,
        gradient: BarCol,
        items: [
          TabItem(icon: Icons.widgets),//title: 'Оголошення'),
          TabItem(icon: Icons.shop),
          TabItem(icon: Icons.add),
          TabItem(icon: Icons.message),
          TabItem(icon: Icons.settings),
        ],
        initialActiveIndex: 2,//optional, default as 0
        onTap: (int i) => print('click index=$i'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: col,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ko_pa/resourses/colors(gradients).dart';
import 'package:ko_pa/resourses/styles.dart';

class Like extends StatelessWidget {
  const Like({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: pad0,
        decoration: const BoxDecoration(
          gradient: col,
        ),
      ),
    );
  }
}

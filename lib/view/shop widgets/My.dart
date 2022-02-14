import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ko_pa/resourses/colors(gradients).dart';
import 'package:ko_pa/resourses/styles.dart';

class My extends StatelessWidget {
  const My({Key key}) : super(key: key);

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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ko_pa/resourses/animations.dart';
import 'package:ko_pa/resourses/colors(gradients).dart';
import 'package:ko_pa/resourses/images.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  MyHomePage1 createState() => MyHomePage1();
}

class MyHomePage1 extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     key: UniqueKey(),
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
        decoration: const BoxDecoration(
          gradient: col,
        ),
        child: Center(
          child: Column(
            children: [
              image,
              const SizedBox(height: 30),
              vv,
              /* Image(
                image: AssetImage("assets/H.png"),
              ),*/
              const SizedBox(height: 50),
              Row(
                children: [
                  const SizedBox(width: 36),
                  FloatingActionButton(
                    heroTag: "phone",
                    onPressed: () => {
                      Navigator.of(context).push(createRoute()),
                    },
                    child: const Icon(Icons.phone),
                    backgroundColor: Colors.lightGreen,
                  ),
                  const SizedBox(width: 50),
                  FloatingActionButton(
                    heroTag: 'facebook',
                    onPressed: null,
                    backgroundColor: Colors.blue,
                    child: const Image(
                      image: const AssetImage("assets/F.png"),
                    ),
                  ),
                  const SizedBox(width: 50),
                  FloatingActionButton(
                    heroTag: 'google',
                    onPressed: null,
                    backgroundColor: Colors.red,
                    //child:const Text("G"),
                    child: const Image(
                      image: const AssetImage("assets/G.png"),
                    ),
                  ),
                  const SizedBox(width: 36),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
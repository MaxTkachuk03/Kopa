import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';
import 'Code.dart';

class Phone extends StatelessWidget {
  const Phone({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //final mediaQuery = MediaQuery.of(context).size.aspectRatio;
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Builder(
        builder: (context) => ListView(
          children: <Widget>[
            /*Padding(
      padding: EdgeInsets.only(
        top: mediaQuery.padding.bottom,),
            child:*/
            Container(
              //width: MediaQuery.of(context).size.width*1,
              height: MediaQuery.of(context).size.height * 1.01,
              padding: EdgeInsets.fromLTRB(10, 17, 10, 0),
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
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    // width: 1000,
                    image: AssetImage("assets/Kopa1.png"),
                  ),
                  //SizedBox(height: 10),
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
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
                    child: Column(
                      children: [
                        // Padding(padding: EdgeInsetsGeometry.infinity),
                        Theme(
                          data: ThemeData(
                            hintColor: Colors.grey,
                          ),
                          child: TextField(
                            textAlign: TextAlign.start,
                            maxLength: 13,
                            maxLines: 1,
                            //controller: phoneController,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 10, 10, 10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius: BorderRadius.circular(40.0)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0),
                                  borderRadius: BorderRadius.circular(40.0)),
                              hintText: 'Введіть номер телефону',
                              hintStyle: TextStyle(
                                //fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                            keyboardType: TextInputType.phone,
                            style: TextStyle(
                              //fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed:() => {
                            Navigator.of(context).push(_createRoute()),
                          },
                          child: Text(
                            'Верифікувати',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          style: ButtonStyle(
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
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonBar(
                              children: <Widget>[
                                ElevatedButton(
                                  child: Text('Назад'),
                                  onPressed: () {
                                    // Navigator.pop(context, false);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyHomePage()));
                                  },
                                  style: ButtonStyle(
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
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // ),
          ],
        ),
        //),
      ),
    );
  }
}


Route _createRoute() {
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

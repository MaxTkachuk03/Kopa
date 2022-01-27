import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Dani.dart';
import 'Phone.dart';


class Code extends StatelessWidget {
  const Code({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Builder(
        builder: (context) => ListView(
          children: <Widget>[
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
                children: [
                  Image(
                    // width: 1000,
                    image: AssetImage("assets/Kopa1.png"),
                  ),
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
                            maxLength: 6,
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
                              hintText: 'Введіть код перевірки',
                              hintStyle: TextStyle(
                                //fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              //fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {
                            Navigator.of(context).push(_createRoute()),
                          },
                          child: Text(
                            'Далі',
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
                                                Phone()));
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

          ],
        ),

      ),
    );
  }
}

Route _createRoute() {
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

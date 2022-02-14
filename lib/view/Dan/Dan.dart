import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ko_pa/generated/l10n.dart';
import 'package:ko_pa/resourses/animations.dart';
import 'package:ko_pa/resourses/colors(gradients).dart';
import 'package:ko_pa/resourses/images.dart';
import 'package:ko_pa/resourses/styles.dart';

class Dani extends StatefulWidget {
  const Dani({Key key}) : super(key: key);

  @override
  Dani1 createState() => Dani1();
}

class Dani1 extends State<Dani> {
  final _fkey = GlobalKey<FormState>();
  final textI = TextEditingController();
  final textP = TextEditingController();
  final textM = TextEditingController();
  Map<String, dynamic> body = Map<String, dynamic>();

  /*@override
  initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: pad0,
        decoration: const BoxDecoration(
          gradient: col,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
                Positioned(
                  child: ListView(
                    children: [
                        Container(
                          padding: pad,
                          child: Form(
                            key: _fkey,
                            child: Column(
                              children: [
                                vv,
                                const SizedBox(height: 20),
                                Theme(
                                  data: ThemeData(
                                    hintColor: htcol,
                                  ),
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    controller: textI as TextEditingController,
                                    decoration: InputDecoration(
                                      contentPadding: pdtxt,
                                      enabledBorder: enb,
                                      focusedBorder: enb,
                                      focusedErrorBorder: enbr,
                                      errorBorder: enbr,
                                      hintText: "Введіть ім'я", //
                                      hintStyle: stl,
                                    ),
                                    keyboardType: TextInputType.text,
                                    style: stl,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Заповніть,будь ласка, поле!';
                                      }
                                    },
                                  ),
                                ),
                                //),
                                const SizedBox(height: 20),
                                Theme(
                                  data: ThemeData(
                                    hintColor: htcol,
                                  ),
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    controller: textP,
                                    decoration: InputDecoration(
                                      contentPadding: pdtxt,
                                      enabledBorder: enb,
                                      focusedBorder: enb,
                                      focusedErrorBorder: enbr,
                                      errorBorder: enbr,
                                      hintText: "Введіть прізвище", //
                                      hintStyle: stl,
                                    ),
                                    keyboardType: TextInputType.text,
                                    style: stl,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        //Scaffold.of(context).showSnackBar(
                                        //    SnackBar(content: Text('Заповніть,будь ласка, поле!')));
                                        // _fkey.currentState.
                                        return 'Заповніть,будь ласка, поле!';
                                      }
                                    },
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Theme(
                                  data: ThemeData(
                                    hintColor: htcol,
                                  ),
                                  child: TextFormField(
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    controller: textM,
                                    decoration: InputDecoration(
                                      contentPadding: pdtxt,
                                      enabledBorder: enb,
                                      focusedBorder: enb,
                                      focusedErrorBorder: enbr,
                                      errorBorder: enbr,
                                      hintText: "Введіть місто", //
                                      hintStyle: stl,
                                    ),
                                    keyboardType: TextInputType.text,
                                    style: stl,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Заповніть,будь ласка, поле!';
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],),

                ),

            //const SizedBox(height: 21),
            //Positioned(child: ),

            // const SizedBox(height: 10),
            Positioned(
              top: MediaQuery.of(context).size.height * .83,
              //bottom: 50,
              //bottom: MediaQuery.of(context).size.height * 0.18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonBar(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () => {
                          if (_fkey.currentState.validate())
                            {
                              Navigator.of(context).push(createRoute2()),
                              body['title'] = textI.text,
                            }
                        },
                        child: Text(
                          S.of(context).complete,
                          style: text,
                        ),
                        style: but,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //const SizedBox(height: 10),
            Positioned(
              top: MediaQuery.of(context).size.height * .91,
              //bottom: MediaQuery.of(context).size.height*0.14,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonBar(
                    children: <Widget>[
                      ElevatedButton(
                        child: Text(S.of(context).back),
                        onPressed: () {
                          // Navigator.pop(context, false);
                          Navigator.push(context, back1());
                        },
                        style: bs,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //  ],
      //),
      //),
    );
  }
}

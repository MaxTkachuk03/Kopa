import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ko_pa/View/Store.dart';
import 'package:ko_pa/generated/l10n.dart';
import 'package:ko_pa/resourses/animations.dart';
import 'package:ko_pa/resourses/colors(gradients).dart';
import 'package:ko_pa/resourses/images.dart';
import 'package:ko_pa/resourses/styles.dart';

import 'Code.dart';


class Dani extends StatefulWidget {
  const Dani({Key key}) : super(key: key);

  @override
  Dani1 createState() => Dani1();
}


class Dani1 extends State<Dani> {
  @override
  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }
  @override
  Widget build(BuildContext context) {
    initState();
    return Scaffold(
      body: Builder(
        builder: (context) => ListView(
          children: <Widget>[
            Container(
              //width: MediaQuery.of(context).size.width*1,
             // height: MediaQuery.of(context).size.height * 1.01,
              padding: pad0,
              decoration: BoxDecoration(
                gradient: col,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  vv,
                  const SizedBox(height: 20),
                  Container(
                    padding: pad,
                    child: Column(
                      children: [
                        // Padding(padding: EdgeInsetsGeometry.infinity),
                        new Theme(
                          data: ThemeData(
                            hintColor: htcol,
                          ),
                          child: TextField(
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            //controller: phoneController,
                            decoration: InputDecoration(
                              contentPadding: pdtxt,
                              enabledBorder: enb,
                              focusedBorder: enb,
                              hintText: "Введіть ім'я", //
                              hintStyle: stl,
                            ),
                            keyboardType: TextInputType.text,
                            style: stl,
                          ),
                        ),
                        const SizedBox(height: 20),
                        new Theme(
                          data: ThemeData(
                            hintColor: htcol,
                          ),
                          child: TextField(
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            //controller: phoneController,
                            decoration: InputDecoration(
                              contentPadding: pdtxt,
                              enabledBorder: enb,
                              focusedBorder: enb,
                              hintText: "Введіть прізвище", //
                              hintStyle: stl,
                            ),
                            keyboardType: TextInputType.text,
                            style:stl,
                          ),
                        ),
                        const SizedBox(height: 20),
                        new Theme(
                          data: ThemeData(
                            hintColor: htcol,
                          ),
                          child: TextField(
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            //controller: phoneController,
                            decoration: InputDecoration(
                              contentPadding: pdtxt,
                              enabledBorder: enb,
                              focusedBorder: enb,
                              hintText: "Введіть місто", //
                              hintStyle: stl,
                            ),
                            keyboardType: TextInputType.text,
                            style: stl,
                          ),
                        ),
                        const SizedBox(height: 150),
                        new ElevatedButton(
                          onPressed: () => {
                            Navigator.of(context).push(createRoute2()),
                          },
                          child: Text(
                            S.of(context).complete,
                            style: text,
                          ),
                          style: but,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonBar(
                              children: <Widget>[
                               new ElevatedButton(
                                  child: Text(S.of(context).back),
                                  onPressed: () {
                                    // Navigator.pop(context, false);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Code()));
                                  },
                                  style: bs,
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


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ko_pa/generated/l10n.dart';
import 'package:ko_pa/resourses/animations.dart';
import 'package:ko_pa/resourses/colors(gradients).dart';
import 'package:ko_pa/resourses/styles.dart';
import 'package:ko_pa/view/Dan/Dan.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  //String val = textM.;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
         // alignment: Alignment.topLeft,
          padding: pad0,
          decoration: const BoxDecoration(
            gradient: col,
          ),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Контактний номер",
                    textAlign: TextAlign.left,
                    style: text1,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "hmkdhmk",
                    style: text,
                  ),
                ],
              ),
              Divider(
                height: 20,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Місто",
                    style: text1,
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "${Dani1().body.toString()}",
                    style: text,
                  ),
                ],
              ),

              Divider(
                height: 20,
                color: Colors.grey,
              ),
              //const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonBar(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () async {
                        await FirebaseAuth.instance.signOut();
                        Navigator.push(context, back0());
                        },
                        child: Text(
                          S.of(context).out,
                          style: text,
                        ),
                        style: but,
                      ),
                    ],
                  ),
                ],
              ),
            ],
            //),
          ),
        ),
    );
  }
}

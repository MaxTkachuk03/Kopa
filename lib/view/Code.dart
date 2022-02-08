import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ko_pa/data/repositories/code_send.dart';
import 'package:ko_pa/generated/l10n.dart';
import 'package:ko_pa/resourses/animations.dart';
import 'package:ko_pa/resourses/colors(gradients).dart';
import 'package:ko_pa/resourses/images.dart';
import 'package:ko_pa/resourses/styles.dart';
import 'Phone.dart';

class Code extends StatefulWidget {
  const Code({Key key}) : super(key: key);

  @override
  Code1 createState() => Code1();
}


class Code1 extends State<Code> {
  TextEditingController pint = TextEditingController();
  @override
  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => ListView(
          children: <Widget>[
            Container(
              //width: MediaQuery.of(context).size.width*1,
              //height: MediaQuery.of(context).size.height * 1.01,
              padding: pad0,
              decoration: const BoxDecoration(
                gradient: col,
              ),
              child: Column(
                children: [
                  image,
                  vv,
                  const SizedBox(height: 10),
                  Container(
                    padding: pad,
                    child: Column(
                      children: [
                        // Padding(padding: EdgeInsetsGeometry.infinity),
                        Theme(
                          data: ThemeData(
                            hintColor: htcol,
                          ),
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            maxLength: 6,
                            maxLines: 1,
                            controller: pint,
                            decoration: InputDecoration(
                              contentPadding: pdtxt,
                              enabledBorder: enb,
                              focusedBorder: enb,
                              hintText: "Введіть код перевірки", //
                              hintStyle: stl,
                            ),
                            keyboardType: TextInputType.number,
                            style: stl,
                          ),
                        ),
                         ElevatedButton(
                          onPressed: () {
                            //verifyPin();
                            if(verifyPin() != null){
                              Navigator.of(context).push(createRoute1());
                            }

                         },/*{ && pint.value == pin
                            Auth().createState().AuthOTP();
                            //,
                          },*/
                          child: Text(
                            S.of(context).next,
                            style: text,
                          ),
                          style: but,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonBar(
                              children: <Widget>[
                                 ElevatedButton(
                                  child: Text(S.of(context).back),
                                  onPressed: () {
                                    // Navigator.pop(context, false);
                                    Navigator.push(
                                        context, back());
                                  },
                                  style:bs,
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

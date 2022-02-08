
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ko_pa/data/repositories/phone_login.dart';
import 'package:ko_pa/generated/l10n.dart';
import 'package:ko_pa/resourses/animations.dart';
import 'package:ko_pa/resourses/colors(gradients).dart';
import 'package:ko_pa/resourses/images.dart';
import 'package:ko_pa/resourses/styles.dart';
import 'package:ko_pa/view/Code.dart';
import 'package:ko_pa/view/Dan.dart';
import 'package:ko_pa/view/Phone.dart';
import 'package:ko_pa/view/main/main_screen.dart';

String pin;
String verId;
Future<void> verifyPin() async {
  //String pin;
  PhoneAuthCredential credential =
  PhoneAuthProvider.credential(verificationId: verId, smsCode: pin);

  try {
    await FirebaseAuth.instance.signInWithCredential(credential);
    final snackBar = SnackBar(content: Text("Операція успішна"));
    ScaffoldMessenger.of(Dani1().context).showSnackBar(snackBar);
  } on FirebaseAuthException catch (e) {
    final snackBar = SnackBar(content: Text("${e.message}"));
    ScaffoldMessenger.of(Code1().context).showSnackBar(snackBar);
  }

}

  






//class sendcode extends StatefulWidget {
// const sendcode({Key key}) : super(key: key);

//  @override
// _sendcodeState createState() => _sendcodeState();
//}

//class _sendcodeState extends State<sendcode> {


// @override
// Widget build(BuildContext context) {
////  return Code();
// }
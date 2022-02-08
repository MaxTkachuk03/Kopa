import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ko_pa/data/repositories/code_send.dart';
import 'package:ko_pa/data/repositories/phone_login.dart';
import 'package:ko_pa/generated/l10n.dart';
import 'package:ko_pa/resourses/animations.dart';
import 'package:ko_pa/resourses/colors(gradients).dart';
import 'package:ko_pa/resourses/images.dart';
import 'package:ko_pa/resourses/styles.dart';
import 'package:ko_pa/view/Code.dart';
import 'package:ko_pa/view/main/main_screen.dart';







class phonescreeen extends StatefulWidget {
  const phonescreeen({Key key}) : super(key: key);

  @override
  phonescreeenState createState() => phonescreeenState();
}

class phonescreeenState extends State<phonescreeen> {
  final phonecontrol = TextEditingController();

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  key: scaffoldKey,
        body: Container(
          decoration: const BoxDecoration(
            gradient: col,
          ),
          child: codeSent
             // ? Center(
           // child: CircularProgressIndicator(),
         // )
              //: currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
              ? Code()
              : getmobilephone(context),
          padding: const EdgeInsets.all(16),
        ));
  }

  getmobilephone(context){

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            //width: MediaQuery.of(context).size.width*1,
            //height: MediaQuery.of(context).size.height * 1.01,
            padding: pad0,
            decoration: const BoxDecoration(
              gradient: col,
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                image,
                //SizedBox(height: 10),
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
                        child: IntlPhoneField(
                          textAlign: TextAlign.start,
                          initialCountryCode: 'UA',
                          controller: phonecontrol,
                          dropdownDecoration: const BoxDecoration(
                            color: lcol,
                            borderRadius: brd,
                          ),
                          decoration: InputDecoration(
                            contentPadding: pdtxt,
                            enabledBorder: enb,
                            focusedErrorBorder: enbr,
                            errorBorder: enbr,
                            focusedBorder: enb,
                            //hintText: "638889247", //
                            hintStyle: stl,
                          ),
                          keyboardType: TextInputType.phone,
                          style: stl,
                          onChanged: (phoneNumber) {
                            setState(() {
                              phone = phoneNumber.completeNumber;
                            });
                          },
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (verifyPhone() != null &&
                              //phonescreeenState().phone.isNotEmpty &&
                              phonecontrol.text.length == 9) {
                            Navigator.of(context).push(createRoute0());
                          }
                        },
                        /*{  && phone.length==9
                          Auth().createState().Auth1();//.Auth1(),
                          //,
                          //Navigator.of(context).push(createRoute0()),
                        },*/
                        child: Text(
                          S.of(context).ver,
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
                                      context,
                                      back0());
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
          // ),
        ],
      ),
      //),
      //),
    );
  }




}




/*TextEditingController phoneController = TextEditingController();
TextEditingController otpController = TextEditingController();

FirebaseAuth auth = FirebaseAuth.instance;

bool otpVisibility = false;

String verificationID = "";

@override
void initState() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

@override
Widget build(BuildContext context) {
  initState();
  return phonescreeen();
}

void loginWithPhone() async {
  auth.verifyPhoneNumber(
    phoneNumber: phoneController.text,
    verificationCompleted: (PhoneAuthCredential credential) async {
      await auth.signInWithCredential(credential).then((value) {
        print("You are logged in successfully");
      });
    },
    verificationFailed: (FirebaseAuthException e) {
      print(e.message);
    },
    codeSent: (String verificationId, int resendToken) {
      otpVisibility = true;
      verificationID = verificationId;
      setState(() {});
    },
    codeAutoRetrievalTimeout: (String verificationId) {},
  );
}

void verifyOTP() async {
  PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationID, smsCode: otpController.text);

  await auth.signInWithCredential(credential).then((value) {
    print("You are logged in successfully");
    Fluttertoast.showToast(
        msg: "You are logged in successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  });
}*/
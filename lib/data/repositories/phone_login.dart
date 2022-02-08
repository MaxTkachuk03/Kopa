import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ko_pa/data/repositories/code_send.dart';
import 'package:ko_pa/view/Code.dart';
import 'package:ko_pa/view/Phone.dart';

String phone;
bool codeSent = false;
bool text1 = false;

Future<void> verifyPhone() async {
  await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance.signInWithCredential(credential);
        final snackBar = SnackBar(content: Text("Код надіслано"));
        ScaffoldMessenger.of(Code1().context).showSnackBar(snackBar);
      },
      verificationFailed: (FirebaseAuthException e) {
        final snackBar = SnackBar(content: Text("${e.message}"));
        ScaffoldMessenger.of(phonescreeenState().context).showSnackBar(snackBar);
      },
      codeSent: (String verficationId, int resendToken) {
        phonescreeenState().setState(() {
          codeSent = true;
          verId = verficationId;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        phonescreeenState().setState(() {
          verId = verificationId;
        });
      },
      timeout: Duration(seconds: 60));
}









/*class Phone extends StatefulWidget {
  const Phone({Key key}) : super(key: key);
  @override
  Phone1 createState() => Phone1();
}

class Phone1 extends State<Phone> {*/



//@override
//Widget build(BuildContext context) {

// return phonescreeen();
//}


/*enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class Phone extends StatefulWidget {
  const Phone({Key key}) : super(key: key);

  // @override
  // void setState(){
  //  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  // } //SystemChrome.setEnabledSystemUIOverlays([]);
  @override
  Phone1 createState() => Phone1();
}

class Phone1 extends State<Phone> {

  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;

  TextEditingController phone = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  String verificationId;

  bool showLoading = false;

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });

    try {
      final authCredential =
      await _auth.signInWithCredential(phoneAuthCredential);

      setState(() {
        showLoading = false;
      });

      if (authCredential?.user != null) {
        Navigator.of(context).push(createRoute1());
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });

      _scaffoldKey.currentState
          .showSnackBar(SnackBar(content: Text(e.message)));
    }
  }

  @override
  void initState(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  @override
  Widget build(BuildContext context) {
    initState();
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
                          controller: phone,
                          dropdownDecoration: BoxDecoration(
                            color: lcol,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40.0),
                                topRight: Radius.zero,
                                bottomLeft: Radius.circular(40.0),
                                bottomRight: Radius.zero),
                          ),
                          decoration: InputDecoration(
                            contentPadding: pdtxt,
                            enabledBorder: enb,
                            focusedErrorBorder: enbr,
                            errorBorder: enbr,
                            focusedBorder: enb,
                            hintText: "638889247", //
                            hintStyle: stl,
                          ),
                          keyboardType: TextInputType.phone,
                          style: stl,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          setState(() {
                            showLoading = true;
                          });

                          await _auth.verifyPhoneNumber(
                            phoneNumber: phone.text,
                            verificationCompleted: (phoneAuthCredential) async {
                              setState(() {
                                showLoading = false;
                              });
                              //signInWithPhoneAuthCredential(phoneAuthCredential); Phone1(). Phone().createState().
                            },
                            verificationFailed: (verificationFailed) async {
                              setState(() {
                                showLoading = false;
                              });
                              _scaffoldKey.currentState
                                  .showSnackBar(SnackBar(content: Text(verificationFailed.message)));
                            },
                            codeSent: (verificationId, resendingToken) async {
                              setState(() {
                                showLoading = false;
                                currentState = MobileVerificationState.SHOW_OTP_FORM_STATE;
                                this.verificationId = verificationId;
                              });
                            },
                            codeAutoRetrievalTimeout: (verificationId) async {},
                          );
                        } ,/*{
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
                                      MaterialPageRoute(
                                          builder: (context) => MyApp()));
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
  @override
  Future<Widget>(BuildContext context) async => Scaffold(
        key: _scaffoldKey,
        body: Container(
          child: showLoading
              ? Center(
            child: CircularProgressIndicator(),
          )
              : Phone1().currentState ==
              MobileVerificationState.SHOW_MOBILE_FORM_STATE
              ? createRoute()
              : createRoute0(),
          padding: const EdgeInsets.all(16),
        ));
}*/

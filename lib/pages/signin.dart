import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:story/component/colors.dart';
import 'package:story/providers/google_sign_in.dart';

var hc = Hcolor();

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // final user = FirebaseAuth.instance.currentUser!;
  var userTypes = ["Student", "Teacher"];
  var userType = "Student";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.cyan[700],
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            RichText(
              text: TextSpan(
                text: "S",
                children: [
                  TextSpan(
                    text: "CIFLIX",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.amber[300]),
                  )
                ],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: 225,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top:
                            BorderSide(width: 1.0, color: Colors.grey.shade700),
                        bottom:
                            BorderSide(width: 1.0, color: Colors.grey.shade700),
                        left:
                            BorderSide(width: 1.0, color: Colors.grey.shade700),
                        right: BorderSide(
                            width: 1.0, color: Colors.grey.shade700)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: DropdownButton(
                    value: userType,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 36,
                    elevation: 8,
                    isExpanded: true,
                    underline: SizedBox(),
                    onChanged: (newvalue) {
                      setState(() {
                        userType = newvalue.toString();
                      });
                    },
                    items:
                        userTypes.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                )
                // ElevatedButton(
                //   onPressed: () {
                //     // Navigator.pushNamed(context, "/home");
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Row(
                //       children: [
                //         SizedBox(
                //           height: 30,
                //           width: 30,
                //           child: Image.asset("assets/facebook-icon.png"),
                //         ), // <-- Use 'Image.asset(...)' here
                //         SizedBox(width: 12),
                //         Text(
                //           "Sign in with facebook",
                //           style: TextStyle(color: Colors.black),
                //         ),
                //       ],
                //     ),
                //   ),
                //   style: ButtonStyle(
                //     foregroundColor:
                //         MaterialStateProperty.all<Color>(Colors.white),
                //     backgroundColor:
                //         MaterialStateProperty.all<Color>(Colors.white),
                //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //       RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(20),
                //         // side: BorderSide(color: Colors.red)
                //       ),
                //     ),
                //   ),
                // ),
                ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 225,
              child: ElevatedButton(
                onPressed: () async {
                  // try {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  var response = await provider.googleLogin();
                  if (!["", null, false, 0].contains(response)) {
                    Navigator.pushNamed(context, "/home");
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/google-icon.png"),
                      ), // <-- Use 'Image.asset(...)' here
                      SizedBox(width: 12),
                      Text(
                        "Sign in with google",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      // side: BorderSide(color: Colors.red)
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
      bottomNavigationBar: null,
      bottomSheet: null,
    );
  }
}

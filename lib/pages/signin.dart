import 'dart:developer';

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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.cyan[700],
      // appBar: AppBar(
      //   elevation: 0,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text("Digital Story Book"),
      //     ],
      //   ),
      // ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            RichText(
              text: TextSpan(
                text: "D",
                children: [
                  TextSpan(
                    text: "igital Story Book",
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
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset("assets/facebook-icon.png"),
                      ), // <-- Use 'Image.asset(...)' here
                      SizedBox(width: 12),
                      Text(
                        "Sign in with facebook",
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
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 225,
              child: ElevatedButton(
                onPressed: () async {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  await provider.googleLogin();
                  Navigator.pushNamed(context, "/home");
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

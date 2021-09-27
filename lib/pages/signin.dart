import 'package:flutter/material.dart';
import 'package:story/component/colors.dart';

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
      backgroundColor: hc.lime,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Digital Story Book"),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/wave.png"),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
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
                    onPressed: () {},
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
            Image.asset("assets/wave2.png"),
          ],
        ),
      ),
      bottomNavigationBar: null,
      bottomSheet: null,
    );
  }
}

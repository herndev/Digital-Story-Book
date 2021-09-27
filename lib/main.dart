import 'package:flutter/material.dart';
import 'package:story/pages/home.dart';
import 'package:story/pages/signin.dart';
import 'component/colors.dart';

var hc = Hcolor();
void main() {
  // Add these 2 lines
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIOverlays([
  //   SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  // ]);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      "/": (_) => SignInPage(),
      "/home": (_) => HomePage(),
    },
    theme: ThemeData(
      primaryColor: hc.green,
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
      ),
      accentColor: hc.lightBrown,
      hintColor: Color(0xFF958051),
    ),
  ));
}

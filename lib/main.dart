// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:story/pages/home.dart';
import 'package:story/pages/library.dart';
import 'package:story/pages/signin.dart';
import 'package:story/providers/google_sign_in.dart';
import 'component/colors.dart';

var hc = Hcolor();
void main() async {
  // Add these 2 lines
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // SystemChrome.setEnabledSystemUIOverlays([
  //   SystemUiOverlay.bottom, //This line is used for showing the bottom bar
  // ]);

  runApp(ChangeNotifierProvider(
    create: (context) => GoogleSignInProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (_) => SignInPage(),
        "/home": (_) => HomePage(),
        "/library": (_) => LibraryPage(),
      },
      theme: ThemeData(
        primaryColor: hc.green,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          iconTheme: IconThemeData(color: Colors.cyan[700]),
        ),
        accentColor: hc.lightBrown,
        hintColor: Color(0xFF958051),
      ),
    ),
  ));
}

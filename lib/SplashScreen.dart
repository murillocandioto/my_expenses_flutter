import 'package:flutter/material.dart';
import 'package:myexpenses_project/Login.dart';
import 'package:myexpenses_project/Logo.dart';
import 'package:splashscreen/splashscreen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new Login(),
      image: Image.network('lib/imagens/logo.PNG'),
      photoSize: 200,
      backgroundColor: Color.fromARGB(255, 40, 40, 40),
      loaderColor: Color.fromARGB(255, 0, 255, 0)
    );
  }
}

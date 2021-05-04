import 'package:flutter/material.dart';
import 'package:myexpenses_project/AboutUs.dart';
import 'package:myexpenses_project/CadastrarGastos.dart';
import 'package:myexpenses_project/Login.dart';
import 'package:myexpenses_project/SplashScreen.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Menu.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color.fromARGB(255, 0, 255, 0),
      accentColor: Color.fromARGB(255, 0, 255, 0),
      backgroundColor: Color.fromARGB(255, 63, 63, 63),
    ),
    title: 'MyExpenses',
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => MyApp(),
      '/login': (context) => Login(),
      '/menu': (context) => Menu(),
      '/aboutus': (context) => AboutUs(),
      '/cadastrargastos': (context) => CadastrarGastos(),
    },
  ));
}


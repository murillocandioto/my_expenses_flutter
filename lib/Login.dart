import 'package:flutter/material.dart';
import 'package:myexpenses_project/AboutUs.dart';
import 'package:myexpenses_project/Button.dart';
import 'package:myexpenses_project/Logo.dart';
import 'package:myexpenses_project/Menu.dart';
import 'package:myexpenses_project/TextField.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var txtUsuario = TextEditingController();
  var txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 40, 40),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          logo(50.0, 150.0, 30.0),
          Container(
            padding: EdgeInsets.only(
                left: 30.0, top: 10.0, right: 30.0, bottom: 10.0),
            child: Column(
              children: [
                textfield(txtUsuario, "Usuário", TextInputType.emailAddress, '',
                    context, false),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 30.0, top: 10.0, right: 30.0, bottom: 10.0),
            child: Column(
              children: [
                textfieldsenha(txtSenha, "Senha"),
              ],
            ),
          ),
          button(context, "Entrar", 20.0, Menu(), 320.0, 50.0),
          iconbutton(Icons.info_outline_rounded, Color.fromARGB(255, 0, 255, 0),
              context, AboutUs()),
        ],
      ),
    );
  }
}

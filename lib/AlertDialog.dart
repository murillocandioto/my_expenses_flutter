import 'package:flutter/material.dart';

AlertDialog ok(BuildContext context, texto) {
  // configura os botões
  Widget Ok = ElevatedButton(
    child: Text("Ok"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // configura o  AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Aviso"),
    content: Text(texto),
    actions: [
      Ok,
    ],
  );
  // exibe o dialogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}





import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

Widget textfield(controlername, labelinformation, type, hint, context, v) {
  return Theme(
    data:
        Theme.of(context).copyWith(accentColor: Color.fromARGB(255, 0, 255, 0)),
    child: TextField(
      autofocus: v,
      keyboardType: type,
      controller: controlername,
      style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 0, 255, 0)),
      cursorColor: Color.fromARGB(255, 0, 255, 0),
      decoration: InputDecoration(
        
          labelText: labelinformation,
          labelStyle: TextStyle(color: Color.fromARGB(100, 0, 255, 0)),
          border: OutlineInputBorder(
            borderSide: BorderSide(color:Color.fromARGB(255, 0, 255, 0), ),
          ),
          hoverColor: Color.fromARGB(255, 0, 255, 0),
          hintText: hint,
          hintStyle: TextStyle(color: Color.fromARGB(100, 0, 255, 0)
          ),
          ),
          
    ),
  );
}

Widget textfieldsenha(controlername, labelinformation) {
  return TextField(
    obscureText: true,
    obscuringCharacter: "*",
    controller: controlername,
    style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 0, 255, 0)),
    cursorColor: Color.fromARGB(255, 0, 255, 0),
    decoration: InputDecoration(
      labelText: labelinformation,
      labelStyle: TextStyle(color: Color.fromARGB(100, 0, 255, 0)),
      border: OutlineInputBorder(),
      hoverColor: Color.fromARGB(255, 0, 255, 0),
    ),
  );
}

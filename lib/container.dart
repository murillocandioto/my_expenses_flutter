import 'package:flutter/material.dart';

Widget containertype(texto, BuildContext context, navigation, icon) {
  return Container(
    color: Color.fromARGB(255, 0, 255, 0),
    margin: EdgeInsets.all(10),
    width: 150.0,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 43, 43, 43), // background
            onPrimary: Color.fromARGB(255, 43, 43, 43),
            minimumSize: Size(150, 150),
            shadowColor: Color.fromARGB(255, 0, 130, 0),
            side: BorderSide(
                color: Color.fromARGB(255, 0, 255, 0),
                width: 2,
                style: BorderStyle.solid) // foreground
            ),
        child: Container(
          child: Row(children: [
            Container(
              child: Icon(icon),
            ),
            Text(
              texto,
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 255, 0), fontSize: 15.0),
            ),
          ]),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navigation));
        }),
  );
}

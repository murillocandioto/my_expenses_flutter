import 'package:flutter/material.dart';

Widget logo(fontsize, padding_direita, padding_esquerda) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          padding: EdgeInsets.only(bottom: 50),
          child: Column(children: [
            Container(
                padding: EdgeInsets.only(right: padding_direita),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "My",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 255, 0),
                        fontFamily: 'Money Honey',
                        fontSize: fontsize),
                  ),
                  Icon(Icons.clean_hands_outlined,
                      color: Color.fromARGB(255, 0, 255, 0), size: fontsize),
                ])),
            Container(
                padding: EdgeInsets.only(left: padding_esquerda),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(Icons.money_off_csred_outlined,
                      color: Color.fromARGB(255, 0, 255, 0), size: fontsize),
                  Text(
                    "Expenses",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 255, 0),
                        fontFamily: 'Money Honey',
                        fontSize: fontsize),
                  ),
                ]))
          ]))
    ],
  );
}

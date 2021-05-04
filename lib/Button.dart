import 'package:flutter/material.dart';

Widget button(BuildContext context, text, sizetext, navigation, w, h) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 43, 43, 43), // background
          onPrimary: Color.fromARGB(255, 43, 43, 43),
          minimumSize: Size(w, h),
          shadowColor: Color.fromARGB(255, 0, 130, 0),
          side: BorderSide(
              color: Color.fromARGB(255, 0, 255, 0),
              width: 0.4,
              style: BorderStyle.solid) // foreground
          ),
      child: Text(
        text,
        style: TextStyle(
            color: Color.fromARGB(255, 0, 255, 0), fontSize: sizetext),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigation));
      });
}

Widget iconbutton(icon, color, context, navigation) {
  return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigation));
      });
}

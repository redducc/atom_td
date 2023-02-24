import 'package:flutter/material.dart';

LinearGradient ScaffoldColor = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: <Color> [
  Colors.red.shade900,
  Colors.indigo.shade900,
  Colors.indigo.shade900,
]);

Widget eMailField(){
  return Container(
    padding: EdgeInsets.all(30),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
        labelText: "E-mail",
        hintText: "example@thinkdigital.com",
      ),
    ),
  );
}

Widget passwordField(){
  return Container(
    padding: EdgeInsets.all(30),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
        labelText: "password",
      ),
    ),
  );
}

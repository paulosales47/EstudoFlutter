import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "App Estudo",
    debugShowCheckedModeBanner: false,
    home: Container(
      margin: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(width: 3, color: Colors.white)
      ),
      child: Image.asset(
        "images/cidade.jpg",
        fit: BoxFit.scaleDown
      )
    ),
  ));
}
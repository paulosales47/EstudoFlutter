import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "App Estudo",
    debugShowCheckedModeBanner: false,
    home: Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(width: 3, color: Colors.white)
      ),
      child: Column(
        children: [
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting"
              " industry.", style: TextStyle(decoration: TextDecoration.none, fontSize: 30),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
            child:Text("Lorem Ipsum is simply dummy text of the printing and typesetting"
              " industry.", style: TextStyle(decoration: TextDecoration.none, fontSize: 30),
          )),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting"
              " industry.", style: TextStyle(decoration: TextDecoration.none, fontSize: 30),
          )
        ],
      ),
    ),
  ));
}
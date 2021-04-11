import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "App Estudo",
    home: Container(
      color: Colors.white,
      child: Column(
        children: [
          TextButton(
              onPressed: (){
                print("TESTE");
              },
              child: Text(
                "Ok",
                style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.none
                    )
              )
          )
        ],
      ),
    ),
  ));
}
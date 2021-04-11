import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = ["TESTE 1", "TESTE 2", "TESTE 3", "TESTE 4", "TESTE 5"];
  var _frase = "Clique abaixo para gerar uma frase";

  void _gerarFrase(){
    setState(() {
      _frase = _frases[Random().nextInt(_frases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/logo.png"),
            Text(
              _frase,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            ElevatedButton(
                onPressed: _gerarFrase,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
                ),
                child: Text(
                  "Nova frase",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                )
            )
          ],
        ),
      )
    );
  }
}

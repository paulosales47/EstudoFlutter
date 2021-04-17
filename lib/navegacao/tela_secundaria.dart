import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  String valor = "";
  TelaSecundaria({this.valor});

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Tela Secundária"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Valor passado: ${widget.valor}")
          ],
        ),
      ),
    );
  }
}


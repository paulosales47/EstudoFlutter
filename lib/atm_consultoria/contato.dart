import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contato extends StatefulWidget {
  @override
  _ContatoState createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Row(
                    children: [
                      Image.asset("images/atm_consultoria/detalhe_contato.png"),
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text("Nossos Contatos", style: TextStyle(fontSize: 25, color: Colors.greenAccent),)
                    ],
                  )
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("atendimento@atmconsultoria.com.br", style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Tefefone: (11) 1234-4567", style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Celular: (11) 91234-4567", style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

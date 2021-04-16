import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Servico extends StatefulWidget {
  @override
  _EmpresaState createState() => _EmpresaState();
}

class _EmpresaState extends State<Servico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Serviço"),
        backgroundColor: Colors.teal,
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
                      Image.asset("images/atm_consultoria/detalhe_servico.png"),
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text("Nossos serviços", style: TextStyle(fontSize: 25, color: Colors.teal),)
                    ],
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Consultoria", style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Cálculo de preços", style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Acompanhamento de projetos", style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

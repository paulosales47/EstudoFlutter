import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AlcoolGasolina extends StatefulWidget {
  @override
  _AlcoolGasolinaState createState() => _AlcoolGasolinaState();
}

class _AlcoolGasolinaState extends State<AlcoolGasolina> {

  var _resultado = "TESTE";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("images/alcool_gasolina/logo.png"),
              Text(
                "Saiba qual a melhor opção de abastecimento do seu carro",
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Preço do Álcool, ex.: 3.59"
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Preço da Gasolina, ex.: 5.90"
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                },
                child: Text("Calcular", style: TextStyle(fontSize: 20)),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                    foregroundColor: MaterialStateProperty.all(Colors.white)
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(_resultado, textAlign: TextAlign.center),
              )
            ],
          ),
        ),
      ),
    );
  }
}

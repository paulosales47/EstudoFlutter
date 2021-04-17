import 'package:flutter/cupertino.dart ';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {

  String _logradouro = "";
  String _bairro = "";
  String _localidade = "";
  var _cep = TextEditingController();

  void _recuperarCep() async {

    String cep = _cep.text ?? "01001000";
    String parametro = "/ws/${cep}/json/";
    String urlApiCep = "viacep.com.br";

    http.Response resposta = await http.get(Uri.https(urlApiCep, parametro));
    Map<String, dynamic> endereco = json.decode(resposta.body);

    setState(() {
      _logradouro = endereco["logradouro"];
      _bairro = endereco["bairro"];
      _localidade = endereco["localidade"];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buscar CEP"),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: _cep,
              decoration: InputDecoration(
                labelText: "Informe um CEP",
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25), child: ElevatedButton(onPressed: _recuperarCep, child: Text("Recuperar CEP")),),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text("Logradouro: ${_logradouro}", style: TextStyle(fontSize: 20),)
            ),
            Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text("Bairro: ${_bairro}", style: TextStyle(fontSize: 20),)
            ),
            Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text("Localidade: ${_localidade}", style: TextStyle(fontSize: 20),)
            ),
          ],
        ),
      ),
    );
  }
}

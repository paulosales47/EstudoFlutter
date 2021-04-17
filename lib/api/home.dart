import 'package:flutter/cupertino.dart ';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {

  void _recuperarCep() async {
    String cep = "01001000";
    String parametro = "/ws/${cep}/json/";
    String urlApiCep = "viacep.com.br";

    http.Response resposta = await http.get(Uri.https(urlApiCep, parametro));
    Map<String, dynamic> retorno = json.decode(resposta.body);

    print(resposta.statusCode);
    print(retorno["logradouro"]);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buscar CEP"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: _recuperarCep, child: Text("Recuperar CEP"))
          ],
        ),
      ),
    );
  }
}

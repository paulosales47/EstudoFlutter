import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'dart:convert';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _precoBitcoin = "";
  final _formatadorMoeda = NumberFormat.currency(locale: "pt_BR", symbol: "R\$");

  void _buscarPrecoBitcoin() async
  {
    String urlApiBitCoin = "blockchain.info";
    String paramentro = "/ticker";

    http.Response resposta = await http.get(Uri.https(urlApiBitCoin, paramentro));
    Map<String, dynamic> valoresMoedas = json.decode(resposta. body);
    setState(() {
      final precoReais = valoresMoedas["BRL"]["buy"];
      _precoBitcoin = _formatadorMoeda.format(precoReais);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/preco_bitcoin/bitcoin.png"),
            Padding(
              padding: EdgeInsets.only(top: 25, bottom: 25),
              child: Text(
                _precoBitcoin,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 35,
                  fontWeight: FontWeight.bold
                ),),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xfff7931a))
              ),
              onPressed: _buscarPrecoBitcoin,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Atualizar",
                  style: TextStyle(
                      fontSize: 30,
                  ),),
              )
            )
          ],
        ),
      ),
    );
  }
}

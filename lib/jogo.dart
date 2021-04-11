import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _textoResultado = "";
  var _imagemApp = AssetImage("images/jokenpo/padrao.png");

  void _calcularEscollhaApp(String escolhaUsuario){
    var _imagens = ["papel", "pedra", "tesoura"];
    var escolhaApp = _imagens[Random().nextInt(3)];

    if((escolhaApp == "papel" && escolhaUsuario == "tesoura") ||
       (escolhaApp == "pedra" && escolhaUsuario == "papel")   ||
       (escolhaApp == "tesoura" && escolhaUsuario == "pedra"))
      _textoResultado = "Usuário ganhou";
    else if(escolhaApp  == escolhaUsuario)
      _textoResultado = "Empate";
    else
      _textoResultado = "App Ganhou";

    setState(() {
      _imagemApp = AssetImage("images/jokenpo/${escolhaApp}.png");
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(16, 25, 16, 0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Escolha do App",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              )),
            Image(image:_imagemApp),
            Text(
              _textoResultado,
              style: TextStyle(
                fontSize: 25
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: GestureDetector(child: Image.asset("images/jokenpo/papel.png"), onTap: () => _calcularEscollhaApp("papel"),)),
                Expanded(child: GestureDetector(child: Image.asset("images/jokenpo/pedra.png"), onTap: () => _calcularEscollhaApp("pedra"),)),
                Expanded(child: GestureDetector(child: Image.asset("images/jokenpo/tesoura.png"), onTap: () => _calcularEscollhaApp("tesoura"),))
              ],
            )
          ],
        ),
      ),
    );
  }
}

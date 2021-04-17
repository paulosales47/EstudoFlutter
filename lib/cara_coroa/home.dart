import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_estudo/cara_coroa/resultado.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void _exibirResultado(){
      int resultadoJogo = Random().nextInt(2);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Resultado(resultadoJogo)
          )
      );
    }

    return Container(
      color: Color(0xff61bd8c),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/cara_coroa/logo.png"),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("images/cara_coroa/botao_jogar.png"),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  int resultadoJogo;

  Resultado(this.resultadoJogo);

  @override
  _ResultudadoState createState() => _ResultudadoState();
}

class _ResultudadoState extends State<Resultado> {

  @override
  Widget build(BuildContext context) {
    List<String> _imagens = ["images/cara_coroa/moeda_cara.png", "images/cara_coroa/moeda_coroa.png"];
    String _imagemResultado = _imagens[widget.resultadoJogo];

    return Container(
      color: Color(0xFF61bd8c),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Image.asset(_imagemResultado),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset("images/cara_coroa/botao_voltar.png"),
          )
        ],
      ),
    );
  }
}

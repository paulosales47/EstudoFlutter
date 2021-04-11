import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _textoResultado = "";

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
            GestureDetector(
              onTap: (){print("clique");},
              onDoubleTap: (){print("double clique");},
              onLongPress: (){print("clique longo");},
              child: Image.asset("images/jokenpo/padrao.png"),
            ),
            Text(_textoResultado),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Image.asset("images/jokenpo/pedra.png")),
                Expanded(child: Image.asset("images/jokenpo/papel.png")),
                Expanded(child: Image.asset("images/jokenpo/tesoura.png"))
              ],
            )
          ],
        ),
      ),
    );
  }
}

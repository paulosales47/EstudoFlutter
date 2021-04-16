import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_estudo/navegacao/tela_secundaria.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Tela principal"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        width: double.infinity,
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaSecundaria() ));
            }, child: Text("Ir para tela secundária"))
          ],
        ),
      ),
    );
  }
}

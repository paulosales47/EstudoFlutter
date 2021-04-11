import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  var _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Informe um valor"
              ),
              maxLength: 3,
              maxLengthEnforcement: MaxLengthEnforcement.none,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey
              ),
              obscureText: false,
              //enabled: false,
              onSubmitted: (valor){
                print(valor);
              },
              controller: _textEditingController,
            ),
            ElevatedButton(onPressed: (){
              print("valor informado: ${_textEditingController.text}");
            }, child: Text("Salvar"))
          ],
        )
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  String _escolhaUsuario = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada checkbox"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            // Text("Masculino"),
            // Radio(
            //     value: "M",
            //     groupValue: _escolhaUsuario,
            //     onChanged: (valor){
            //       setState(() {
            //         _escolhaUsuario = valor;
            //       });
            //       print(valor);
            //     }
            // ),
            // Text("Feminino"),
            // Radio(
            //     value: "F",
            //     groupValue: _escolhaUsuario,
            //     onChanged: (valor){
            //       setState(() {
            //         _escolhaUsuario = valor;
            //       });
            //       print(valor);
            //     }
            // )
            RadioListTile(
              title: Text("Masculino"),
              value: "M",
              groupValue: _escolhaUsuario,
              onChanged: (valor){
                setState(() {
                  _escolhaUsuario = valor;
                });
              }),
            RadioListTile(
              title: Text("Feminino"),
              value: "F",
              groupValue: _escolhaUsuario,
              onChanged: (valor){
                setState(() {
                  _escolhaUsuario = valor;
                });
              }),
            ElevatedButton(onPressed: (){
              print(_escolhaUsuario);
            }, child: Text("Salvar", style: TextStyle(fontSize: 25),),)
          ],
        ),
      ),
    );
  }
}

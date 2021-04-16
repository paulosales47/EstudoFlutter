import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _receberNotificacao = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada Switch"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            // Switch(value: _receberNotificacao, onChanged: (valor){
            //   setState(() {
            //     _receberNotificacao = valor;
            //   });
            // }),
            // Text("Receber notificações")
            SwitchListTile(
              title: Text("Receber notificação"),
              value: _receberNotificacao,
              onChanged: (valor){setState(() { _receberNotificacao = valor; });
            }),
            ElevatedButton(onPressed: (){
                print("Receber notificação: ${_receberNotificacao ? "Sim" : "Não"}");
            }, child: Text("Salvar", style: TextStyle(fontSize: 25),))

          ],
        ),
      ),
    );
  }
}

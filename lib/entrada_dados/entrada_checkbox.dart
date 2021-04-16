import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        width: double.infinity,
        decoration: BoxDecoration(
               border: Border.all(width: 10, color: Colors.yellow)
        ),
        child: Column(
          children: [
            //Text("Comida brasileira"),
            //Checkbox(value: _valor, onChanged: (valor){setState(() { _valor = valor;});
            //}),
            CheckboxListTile(value: _comidaBrasileira,
              onChanged: (valor){ setState(() { _comidaBrasileira = valor; });},
              title: Text("Comida brasileira"),
              subtitle: Text("Teste"),
              activeColor: Colors.green,
              selected: true,
              secondary: Icon(Icons.add_box),
            ),
            CheckboxListTile(value: _comidaMexicana,
              onChanged: (valor){ setState(() { _comidaMexicana = valor; });},
              title: Text("Comida mexicana"),
              subtitle: Text("Teste"),
              activeColor: Colors.red,
              selected: true,
              secondary: Icon(Icons.add_box),
            ),
            ElevatedButton(
                onPressed: (){
                  print(_comidaBrasileira.toString());
                  print(_comidaMexicana.toString());
                },
                child: Text("Salvar", style: TextStyle(fontSize: 25)))
          ],
        ),
      ),
    );
  }
}

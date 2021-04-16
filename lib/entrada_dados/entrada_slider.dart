import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double _notaUsuario = 5;
  String _labelSlide = "5";
  Color _corAtiva = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada slider"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Slider(
              label: _labelSlide,
              divisions: 10,
              activeColor: _corAtiva,
              inactiveColor: Colors.black26,
              value: _notaUsuario,
              min: 0,
              max: 10,
              onChanged: (nota){
                setState(() {
                  _notaUsuario = nota;
                  _labelSlide = nota.toString();
                  if(nota <= 2)
                    _corAtiva = Colors.red;
                  else if(nota <= 4)
                    _corAtiva = Colors.orange;
                  else if(nota <= 6)
                    _corAtiva = Colors.yellow;
                  else if(nota <= 8)
                    _corAtiva = Colors.blue;
                  else if(nota <= 10)
                    _corAtiva = Colors.green;
                });
                }),
            ElevatedButton(onPressed: (){

            }, child: Text("Salvar", style: TextStyle(fontSize: 25)))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  void _carregarItens(){
    _itens = [];

    for(int i = 0; i <= 10; i++){
      Map<String, dynamic> item = Map();
      item["titulo"] = "Lorem ${i} ipsum dolor sit amet, consectetur";
      item["descricao"] = "Cras ${i} non accumsan sem";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {

    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice){
            print("Item: ${indice}");
            return ListTile(
              onTap: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    title: Text(_itens[indice]["titulo"]),
                    titlePadding: EdgeInsets.all(20),
                    titleTextStyle: TextStyle(fontSize: 20, color: Colors.orange),
                    content: Text(_itens[indice]["descricao"]),
                    contentPadding: EdgeInsets.all(20),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Salvar")),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Cancelar"))
                    ],
                  );
                });
              },
              onLongPress: (){},
              title: Text(_itens[indice]["titulo"]),
              subtitle: Text(_itens[indice]["descricao"]),
            );
          }),
      ),
    );
  }
}

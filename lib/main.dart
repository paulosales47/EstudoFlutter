import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateFul()
  ));
}


class HomeStateFul extends StatefulWidget {
  @override
  _HomeStateFulState createState() => _HomeStateFulState();
}

class _HomeStateFulState extends State<HomeStateFul> {

  var _texto = "App Estudo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Estudo"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                setState(() {
                  _texto = "Curso Flatter";
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child: Text("Clique aqui"),
            ),
            Text(_texto)
          ],
        ),
      )
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var _titulo = "App Estudo";

    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("Conteúdo principal"),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.lightGreen,
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Texto 1"),
                Text("Texto 2"),
                Text("Texto 3"),
                Text("Texto 4"),
              ],
            ),
          )
      ),
    );
  }
}

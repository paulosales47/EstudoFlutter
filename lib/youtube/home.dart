import 'package:flutter/cupertino.dart ';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceNavegacao = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black54,
        ),
        leading: Transform.scale(scale: 2.5, child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Image.asset("images/youtube/logo.png"),
        )),
        actions: [
          // ElevatedButton.icon(
          //     onPressed: (){},
          //     icon: Icon(Icons.search_outlined),
          //     label: Text("Pesquisar")
          // )
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){}),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}),
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: (){}),
        ],
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        //fixedColor: Colors.red,
        type: BottomNavigationBarType.shifting,
        currentIndex: _indiceNavegacao,
        onTap: (indice){
          setState(() {
            _indiceNavegacao = indice;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            label: "Início",
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              label: "Em alta",
              icon: Icon(Icons.whatshot)
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              label: "Inscrções",
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              label: "Biblioteca",
              icon: Icon(Icons.home)
          ),
        ],
      ),
    );
  }
}

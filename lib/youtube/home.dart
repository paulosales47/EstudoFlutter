import 'package:flutter/cupertino.dart ';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_estudo/youtube/biblioteca.dart';
import 'package:flutter_estudo/youtube/custom_search_delegate.dart';
import 'package:flutter_estudo/youtube/em_alta.dart';
import 'package:flutter_estudo/youtube/inicio.dart';
import 'package:flutter_estudo/youtube/inscricao.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceNavegacao = 0;
  String _termoBusca = "";

  @override
  Widget build(BuildContext context) {

    List<Widget> _telas = [
      Inicio(_termoBusca),
      EmAlta(),
      Inscricao(),
      Biblioteca(),
    ];

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
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () async {
                _termoBusca = await showSearch(context: context, delegate: CustomSearchDelegate());
                setState(() {});
              }
          ),
        ],
      ),
      body: Container(
        child: Container(
          padding: EdgeInsets.only(top: 10),
          child: _telas[_indiceNavegacao],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: _indiceNavegacao,
        onTap: (indice){
          setState(() {
            _indiceNavegacao = indice;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Início",
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: "Em alta",
              icon: Icon(Icons.whatshot)
          ),
          BottomNavigationBarItem(
              label: "Inscrções",
              icon: Icon(Icons.local_play)
          ),
          BottomNavigationBarItem(
              label: "Biblioteca",
              icon: Icon(Icons.person)
          ),
        ],
      ),
    );
  }
}

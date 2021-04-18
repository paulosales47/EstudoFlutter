import 'package:flutter/cupertino.dart ';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_estudo/api_future/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _urlApi = "jsonplaceholder.typicode.com";

  Future<List<Postagem>> _recuperarPostagens() async{
    List<Postagem> postagens = [];
    http.Response resposta = await http.get(Uri.https(_urlApi, "/posts"));
    var jsonItensResposta = json.decode(resposta.body);

    for(var post in jsonItensResposta){
      postagens.add(Postagem(
        post["userId"],
        post["id"],
        post["title"],
        post["body"]
      ));
    }

    return postagens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de serviços com Future"),
      ),
      body: FutureBuilder<List<Postagem>>(
        future: _recuperarPostagens(),
        builder: (context, snapshot){

          if(snapshot.connectionState == ConnectionState.waiting)
            return Center(
              child: CircularProgressIndicator(),
            );

          if(snapshot.connectionState == ConnectionState.done){
            return ListView.builder (
              itemCount: snapshot.data.length,
              itemBuilder: (context, index){
                Postagem post = snapshot.data[index];
                return ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.body),
                );
              },
            );
          }


          print(snapshot.connectionState);


          return Text("Erro ao carregar as informações");
        },
      ),
    );
  }
}

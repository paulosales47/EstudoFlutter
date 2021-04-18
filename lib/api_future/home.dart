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
    var resposta = await http.get(Uri.https(_urlApi, "/posts"));
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

  void _cadastrarPostagem() async {
    var resposta = await http.post(
    Uri.https(_urlApi, "/posts"),
    headers: { 'Content-type': 'application/json; charset=UTF-8' },
    body: json.encode({
      "userId": 120,
      "id": null,
      "title": "TITULO",
      "body": "CORPO DA POSTAGEM"
    }),
  );
  print(resposta.statusCode);
  print(resposta.body);
  }

  void _removerPostagem() async {
    var resposta = await http.delete(Uri.https(_urlApi, "/posts/2"));
    print(resposta.statusCode);
    print(resposta.body);
  }

  void _atualizarPostagem() async {
    var resposta = await http.put(
    Uri.https(_urlApi, "/posts/2"),
    headers: { 'Content-type': 'application/json; charset=UTF-8' },
    body: json.encode({
      "userId": 120,
      "id": null,
      "title": "TITULO ALTERADO",
      "body": "CORPO DA POSTAGEM ALTERADO"
    }),
  );
  print(resposta.statusCode);
  print(resposta.body);
  }

  void _atualizarCampoPostagem() async {
    var resposta = await http.patch(
      Uri.https(_urlApi, "/posts/2"),
      headers: { 'Content-type': 'application/json; charset=UTF-8' },
      body: json.encode({
        "title": "TITULO ALTERADO PATH",
      }),
    );
    print(resposta.statusCode);
    print(resposta.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de serviços com Future"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(onPressed: (){
                  _cadastrarPostagem();
                }, child: Text("Salvar")),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(onPressed: (){
                    _atualizarCampoPostagem();
                    _atualizarPostagem();
                  }, child: Text("Atualizar")),
                ),
                ElevatedButton(onPressed: (){
                  _removerPostagem();
                }, child: Text("Remover")),
              ],
            ),
            Expanded(
                child: FutureBuilder<List<Postagem>>(
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

                    return Text("Erro ao carregar as informações");
                  },
                )
            )
          ],
        ),
      ),
    );
  }
}

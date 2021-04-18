import 'package:flutter/cupertino.dart ';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Future<Map> _recuperarPreco() async {

    String urlApiBitCoin = "blockchain.info";
    String paramentro = "/ticker";

    http.Response resposta = await http.get(Uri.https(urlApiBitCoin, paramentro));
    return json.decode(resposta.body);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
      future: _recuperarPreco(),
      builder: (context, snapshot){
        String resultado;

        if(snapshot.connectionState == ConnectionState.none)
          print("none");
        else if(snapshot.connectionState == ConnectionState.waiting)
          resultado = "Carregando....";
        else if(snapshot.connectionState == ConnectionState.active)
          print("active");
        else if(snapshot.connectionState == ConnectionState.done){
          resultado = "Pronto";

          if(snapshot.hasError){
            resultado = "Pronto";
          }
          else{
            double valor = snapshot.data["BRL"]["buy"];
            resultado = valor.toString();
          }
        }


        return Center(
          child: Text(resultado),
        );
      },
    );
  }
}

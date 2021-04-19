import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_estudo/youtube/api.dart';
import 'package:flutter_estudo/youtube/model/video.dart';

class Inicio extends StatefulWidget {

  String termoBusca;

  Inicio(this.termoBusca);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  @override
  Widget build(BuildContext context) {

    final apiYouTube = ApiYoutube();

    Future<List<Video>> _buscarVideos(String termoBusca){
      return apiYouTube.pesquisar(termoBusca);
    }

    return FutureBuilder<List<Video>>(
      future: _buscarVideos(widget.termoBusca),
      builder: (context, snashot){
        if(snashot.connectionState == ConnectionState.waiting)
          return Center(child: CircularProgressIndicator());
        else if(snashot.connectionState == ConnectionState.done){
          return ListView.separated(
            separatorBuilder: (context, indice) => Divider(height: 2, color: Colors.black38),
            itemCount: snashot.data.length,
            itemBuilder: (context, indice){
              return Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(snashot.data[indice].imagem)
                      )
                    ),
                  ),
                  ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(snashot.data[indice].titulo)
                    ),
                    subtitle: Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text(snashot.data[indice].descricao)
                    ),
                  )
                ],
              );
            });
        }

        return Text("Erro ao carregar a lista de vídeos");
      },
    );
  }
}

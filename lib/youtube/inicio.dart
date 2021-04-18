import 'package:flutter/cupertino.dart';
import 'package:flutter_estudo/youtube/api.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  @override
  Widget build(BuildContext context) {

    final apiYouTube = ApiYoutube();
    apiYouTube.pesquisar("");

    return Container(
      child: Center(
        child: Text("Inicio", style: TextStyle(fontSize: 25),),
      ),
    );
  }
}

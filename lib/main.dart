import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_estudo/navegacao/tela_principal.dart';
import 'package:flutter_estudo/navegacao/tela_secundaria.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaPrincipal(),
    routes: {
      "/secundaria": (context) => TelaSecundaria()
    },
  ));
}

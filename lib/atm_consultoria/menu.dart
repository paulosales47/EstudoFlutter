import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_estudo/atm_consultoria/cliente.dart';
import 'package:flutter_estudo/atm_consultoria/contato.dart';
import 'package:flutter_estudo/atm_consultoria/empresa.dart';
import 'package:flutter_estudo/atm_consultoria/servico.dart';

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    void _abrirEmpresa(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Empresa()));
    }
    void _abrirContato(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
    }
    void _abrirServico(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Servico()));
    }
    void _abrirCliente(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Cliente()));
    }


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("ATM Consultoria"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/atm_consultoria/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Image.asset("images/atm_consultoria/menu_empresa.png"),
                    onTap: _abrirEmpresa,
                  ),
                  GestureDetector(
                    child: Image.asset("images/atm_consultoria/menu_servico.png"),
                    onTap: _abrirServico,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Image.asset("images/atm_consultoria/menu_cliente.png"),
                  onTap: _abrirCliente,
                ),
                GestureDetector(
                  child: Image.asset("images/atm_consultoria/menu_contato.png"),
                  onTap: _abrirContato,
                )
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}

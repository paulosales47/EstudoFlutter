import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cliente extends StatefulWidget {
  @override
  _EmpresaState createState() => _EmpresaState();
}

class _EmpresaState extends State<Cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cliente"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Row(
                    children: [
                      Image.asset("images/atm_consultoria/detalhe_cliente.png"),
                      Padding(padding: EdgeInsets.only(left: 20)),
                      Text("Nossos clientes", style: TextStyle(fontSize: 25, color: Colors.lightGreen),)
                    ],
                  )
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset("images/atm_consultoria/cliente1.png"),
              ),
              Text("Empresa de software"),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset("images/atm_consultoria/cliente2.png"),
              ),
              Text("Empresa de auditoria"),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frase = "TESTE";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/logo.png"),
            Text(
              _frase,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
                ),
                child: Text(
                  "Nova frase",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                )
            )
          ],
        ),
      )
    );
  }
}

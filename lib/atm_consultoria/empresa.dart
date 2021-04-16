import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Empresa extends StatefulWidget {
  @override
  _EmpresaState createState() => _EmpresaState();
}

class _EmpresaState extends State<Empresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Row(
                  children: [
                    Image.asset("images/atm_consultoria/detalhe_empresa.png"),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Text("Sobre a empresa", style: TextStyle(fontSize: 25, color: Colors.deepOrange),)
                  ],
                )
              ),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut "
                  "finibus, tortor eu lacinia tincidunt, arcu arcu condimentum "
                  "nulla, et ultrices mauris odio sit amet metus. Nunc sit amet "
                  "diam faucibus, porttitor tellus scelerisque, pharetra lectus."
                  " Sed sit amet neque mauris. Ut quis arcu at diam tristique "
                  "varius. Mauris faucibus tempor sollicitudin. Orci varius "
                  "natoque penatibus et magnis dis parturient montes, nascetur"
                  " ridiculus mus. Vestibulum a quam felis. Donec bibendum ornare"
                  " ipsum ut laoreet. Sed tincidunt, leo at luctus cursus, ante "
                  "erat pharetra felis, ut vestibulum lacus ipsum et massa. "
                  "Maecenas placerat laoreet sem vitae posuere. Duis et elementum"
                  " lectus. Nam dignissim ipsum eu justo sagittis, eget hendrerit "
                  "dui eleifend. Cras in eros eu leo scelerisque molestie sit "
                  "amet ut erat."
                  "Integer et nisi et turpis blandit varius ac nec lacus. Proin"
                  " dolor sapien, hendrerit commodo turpis ac, ullamcorper "
                  "faucibus felis. Cras feugiat tellus a congue sollicitudin."
                  " Integer lobortis, urna in maximus dignissim, odio ligula"
                  " mollis lacus, sed mollis lorem sem vel est. Duis feugiat,"
                  " nunc nec sodales sollicitudin, est nisi gravida nunc,"
                  " eget eleifend ipsum libero sed risus. Etiam nec commodo"
                  " velit. Curabitur blandit lorem id justo sodales congue."
                  " Quisque ante leo, euismod ac purus a, cursus varius sem."
                  " Nam ipsum dolor, gravida dictum tellus eget, facilisis"
                  " sagittis lorem. Curabitur lobortis lobortis massa, id"
                  " laoreet metus sodales eget."
                  "Integer et nisi et turpis blandit varius ac nec lacus. Proin"
                  " dolor sapien, hendrerit commodo turpis ac, ullamcorper "
                  "faucibus felis. Cras feugiat tellus a congue sollicitudin."
                  " Integer lobortis, urna in maximus dignissim, odio ligula"
                  " mollis lacus, sed mollis lorem sem vel est. Duis feugiat,"
                  " nunc nec sodales sollicitudin, est nisi gravida nunc,"
                  " eget eleifend ipsum libero sed risus. Etiam nec commodo"
                  " velit. Curabitur blandit lorem id justo sodales congue."
                  " Quisque ante leo, euismod ac purus a, cursus varius sem."
                  " Nam ipsum dolor, gravida dictum tellus eget, facilisis"
                  " sagittis lorem. Curabitur lobortis lobortis massa, id"
                  " laoreet metus sodales eget.",
                style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,)
            ],
          ),
        ),
      ),
    );
  }
}

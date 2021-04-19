import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: (){
        query = "";
      }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return
        IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          close(context, "");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    if(query.isNotEmpty){

      List<String> sugestoes = ["android", "cars", "layout", "flutter", "dev"]
          .where((element) => element.toLowerCase().contains(query.toLowerCase())).toList();

      return ListView.builder(
        itemCount: sugestoes.length,
        itemBuilder: (context, indice){
          return ListTile(
            title: Text(sugestoes[indice]),
            onTap: (){
              close(context, sugestoes[indice]);
            },
          );
        });
    }
    else
      return Center(child: Text("Nenhum resultado para a pesquisa"));
  }

}
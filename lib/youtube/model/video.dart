class Video {
  String id;
  String titulo;
  String canal;
  String descricao;
  String imagem;

  Video({this.id, this.titulo, this.canal, this.descricao, this.imagem});

  // static fromJson(Map<String, dynamic> map){
  //   return Video(
  //     id: map["id"]["videoId"],
  //     titulo: map["snippet"]["title"],
  //     canal: map["snippet"]["channelId"],
  //     descricao: map["snippet"]["description"],
  //     imagem: map["snippet"]["thumbnails"]["high"]["url"]
  //   );
  // }

  factory Video.fromJson(Map<String, dynamic> map){
    return Video(
        id: map["id"]["videoId"],
        titulo: map["snippet"]["title"],
        canal: map["snippet"]["channelId"],
        descricao: map["snippet"]["description"],
        imagem: map["snippet"]["thumbnails"]["high"]["url"]
    );
  }
}
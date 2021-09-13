import 'dart:core';

class UsuarioCampo {
  static final String nome = 'nome';
}

class Usuario {
   String? idUsuario;
   String? nome;
   String? email;
   String? idCargo;
   String? idIdeologia;
   List<String>? cartas;
   String? idMiniatura;
   String? senha;
  //  String urlAvatar;

  Usuario({
    this.nome,
    this.email,
    this.senha,
    this.idCargo,
    this.idIdeologia,
    this.cartas,
    this.idMiniatura,
    this.idUsuario = ''}
  );

Usuario.criarUsuario({
  required this.idUsuario,
  required this.nome,
  required this.email
}){
  this.idCargo = "1";
  this.idIdeologia = "3";
  this.cartas = ["carta 1", "carta 2"];
  this.idMiniatura = "2";
}
  // Usuario copyWith({
  //   required String idUsuario,
  //   required String nome,
  //   // String urlAvatar,
  //   required String senha,
  // }) =>
  //     Usuario(
  //       idUsuario: idUsuario ?? this.idUsuario,
  //       nome: nome ?? this.nome,
  //       senha: senha ?? this.senha,
  //       // urlAvatar: urlAvatar ?? this.urlAvatar,
  //     );

  static Usuario fromJson(Map<String, dynamic> json) => Usuario(
      idUsuario: json['idUsuario'], nome: json['nome'], email: json['email'], senha: json['senha'], idCargo: json['idCargo'],
       idIdeologia: json['idIdeologia'], cartas: json['cartas'], idMiniatura: json['idMiniatura']);
      // urlAvatar: json['urlAvatar'],


  Map<String, dynamic> toJson() => {
        'idUsuario': idUsuario,
        'nome': nome,
        'email': email,
        'senha': senha,
        'idCargo': idCargo,
        'idIdeologia': idIdeologia,
        'cartas': cartas,
        'idMiniatura': idMiniatura
      };
}

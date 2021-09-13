import 'dart:ui';

import 'package:flutter/material.dart';

//PAGINA REFERNTE AO LOBBY DE ESPERA QUANDO O JOGADOR ENTRA EM UMA SALA POR MEIO DA OPÇAO ENTRA EM SALA

class PreGameLobby extends StatefulWidget {
  const PreGameLobby({Key? key}) : super(key: key);

  @override
  _PreGameLobbyState createState() => _PreGameLobbyState();
}

class _PreGameLobbyState extends State<PreGameLobby> {
  String sala = ' 9999';
  String player1 = 'Jogador 1';
  String player2 = 'Jogador 2';
  String player3 = 'Jogador 3';
  String player4 = 'Jogador 4';

  Widget _body() {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            //BOTAO QUE REDIRECIONA O JOGADOR DE VOLTA AO MENU
            BackButton(
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pushNamed('/menu');
              },
            ),
            SizedBox(
              width: 480,
            ),
            //TEXTO COM O ID DA SALA
            Text(
              'Sala: $sala',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 100,
            ),
            //MOLDURA E TEXTO CONTENDO O NOME DO JOGADOR 1
            Container(
              height: 110,
              width: 220,
              decoration: BoxDecoration(color: Colors.grey.shade400),
              child: Center(
                  child: Text(
                '$player1',
                style: TextStyle(fontSize: 25),
              )),
            ),
            SizedBox(
              width: 50,
            ),
            //MOLDURA E TEXTO CONTENDO O NOME DO JOGADOR 2
            Container(
              height: 110,
              width: 220,
              decoration: BoxDecoration(color: Colors.grey.shade400),
              child: Center(
                  child: Text(
                '$player2',
                style: TextStyle(fontSize: 25),
              )),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 100,
            ),
            //MOLDURA E TEXTO CONTENDO O NOME DO JOGADOR 3
            Container(
              height: 110,
              width: 220,
              decoration: BoxDecoration(color: Colors.grey.shade400),
              child: Center(
                  child: Text(
                '$player3',
                style: TextStyle(fontSize: 25),
              )),
            ),
            SizedBox(
              width: 50,
            ),
            //MOLDURA E TEXTO CONTENDO O NOME DO JOGADOR 4
            Container(
              height: 110,
              width: 220,
              decoration: BoxDecoration(color: Colors.grey.shade400),
              child: Center(
                  child: Text(
                '$player4',
                style: TextStyle(fontSize: 25),
              )),
            ),
          ],
        ),
      ],
    );
  }

//COLOCAR O FUNDO BORRADO
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg-menu.png"),
                fit: BoxFit.cover),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(color: Colors.grey.shade500.withOpacity(0.2)),
        ),
        _body()
      ],
    ));
  }
}

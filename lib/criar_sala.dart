import 'dart:ui';

import 'package:app_nas_gracas_do_imperador/global_vars.dart';
import 'package:flutter/material.dart';

//PAGINA REFERENTE A CRIAÇAO DE UMA SALA PELO USUARIO

class CriarSala extends StatefulWidget {
  const CriarSala({Key? key}) : super(key: key);

  @override
  _CriarSalaState createState() => _CriarSalaState();
}

class _CriarSalaState extends State<CriarSala> {
  String sala = ' 9999';
  String player1 = Usuario.nome;
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
            //BOTAO PARA VOLTAR AO MENU
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
            //MOLDURA E TEXTO CONTENDO O NOME DO JOGADOR 1, NO CASO O CRIADOR DA SALA
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
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            SizedBox(
              width: 530,
            ),
            //BOTAO PARA INICIAR A PARTIDA - SOMENTE VISIVEL AO CRIADOR DA PARTIDA
            Container(
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/Iniciar.png'),
              )),
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => Navigator.of(context).pushNamed('/partida'),
              ),
            )
          ],
        )
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

import 'dart:ui';

import 'package:flutter/material.dart';

//PAGINA REFERENTE AO TUTORIAL DO JOGO

class Tutorial extends StatefulWidget {
  const Tutorial({Key? key}) : super(key: key);

  @override
  _TutorialState createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  String text = '''Premissa:
Jogue como um político do século XIX, usando sua influência
para passar ou vetar votações e fazer suas ideologias prevalecerem.

Elementos:
Todos os jogadores começam como deputados com uma reputação
neutra,e com o objetivo de subir de cargo até se tornar
o presidente do conselho de ministros.

Os jogadores devem votar a favor ou contra as votações
e utilizar sua influência, recurso finito que os jogadores
ganham por turno, para poder aprovar ou vetar uma votação.

Dentro de jogo as votações são pautadas em torno das ideologias
da época. Há três ideologias que são primariamente discutidas:
Abolicionismo, Igreja e Poder Central.

Votações aprovadas que apoiam as suas ideologias, ou reprovadas
que vão contra as suas ideologias, garantem reputação ao jogador.
Caso contrário, o jogador perde reputação.
Empates dão a votação como adiada.

Votações que beneficiam a maioria das ideologias do personagem
garantem a ele um ganho de reputação que, quando suficiente,
faz com que o jogador suba de cargo.

Cargos maiores concedem benefícios aos jogadores,
como mais influência por turno e poder armazenar
mais influência de uma vez.

Comece com uma carta de personagem aleatória,
que ditará quais ideologias você vai defender nas votações,
e com a peça que representa seu personagem sendo
posicionada no tabuleiro.

Cada jogador inicia a partida com 4 influências.

Turno:
Os turnos começam com uma votação sendo apresentada
para os jogadores lerem e poderem interpretar o texto,
para tentar descobrir como ela influencia cada ideologia.

Os jogadores devem então decidir se são a favor ou contra a votação.

Os jogadores, então, podem escolher uma carta que
representa o quanto de sua influência vão gastar para
poder manipular a votação a seu favor.

Após todos os jogadores escolherem quanto de influência
será gasto, toda a influência dos jogadores é somada, a favor
e contra, e o saldo vai definir se ela foi aprovada ou não.

É, então, apresentado como a votação influenciava
cada ideologia e é calculado o ganho/perda de reputação
de cada jogador baseado no resultado da votação.
 
As peças dos jogadores andam no tabuleiro o número de casas
correspondente a quanto de reputação ganharam/perderam.
 
Se alguém subiu de cargo, tem seu cargo atualizado.
 
Os jogadores ganham influência com base no seu cargo,
respeitando o limite de armazenamento do mesmo.
 
Se inicia o próximo turno.
''';

  Widget _body() {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(height: 50),
              Container(
                alignment: Alignment.bottomCenter,
                width: 75,
                //BOTAO QUE REDIRECIONA O JOGADOR DE VOLTA AO MENU
                child: BackButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/menu');
                  },
                ),
              )
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    //TITULO DA PAGINA - TUTORIAL
                    Text(
                      'Tutorial',
                      style: TextStyle(fontSize: 50),
                    ),
                    SizedBox(
                      width: 80,
                    )
                  ],
                ),
                SizedBox(height: 30),
                //TEXTO DO TUTORIAL
                Text(
                  text,
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ],
      ),
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
          child: Container(color: Colors.grey.shade400.withOpacity(0.2)),
        ),
        _body()
      ],
    ));
  }
}

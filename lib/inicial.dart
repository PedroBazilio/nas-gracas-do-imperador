import 'package:flutter/material.dart';

//PAGINA REFERENTE A TELA INICIAL DO JOGO
//UTILIZACAO APENAS DE UMA IMAGEM CRIADA E UM DETECTOR DE GESTOS PARA LEVAR O JOGADOR A PAGINA DE LOGIN

class Inicial extends StatefulWidget {
  const Inicial({Key? key}) : super(key: key);

  @override
  _InicialState createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg-inicio.png"),
            fit: BoxFit.cover),
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pushNamed('/login'),
      ),
    ));
  }
}

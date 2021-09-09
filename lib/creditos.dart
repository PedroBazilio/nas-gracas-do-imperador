import 'dart:ui';

import 'package:flutter/material.dart';

//PAGINA DOS CREDITOS DO JOGO

class Creditos extends StatefulWidget {
  const Creditos({Key? key}) : super(key: key);

  @override
  _CreditosState createState() => _CreditosState();
}

class _CreditosState extends State<Creditos> {
  String text =
      'João Pedro – Documentação\n\nArthur Resende – Desenvolvimento de Jogabilidade\n\nThamires – Desenvolvimento de Jogabilidade\n\nErick – Banco de dados\n\nGustavo Miranda – Criação de menus\n\nPedro Bazilio – Artefatos Gráficos';

  Widget _body() {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(height: 40),
              Container(
                alignment: Alignment.bottomCenter,
                width: 75,
                //BOTAO PARA VOLTAR AO MENU
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
                  height: 45,
                  width: 500,
                ),
                Row(
                  children: [
                    //TITULO DA PAGINA
                    Text(
                      'Créditos',
                      style: TextStyle(fontSize: 50),
                    ),
                    SizedBox(width: 80),
                  ],
                ),
                SizedBox(height: 30),
                //TEXTO DOS CREDITOS
                Text(
                  text,
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }


//WIDGET PARA COLOCAR O FUNDO BORRADO
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

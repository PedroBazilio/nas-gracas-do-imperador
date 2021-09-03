import 'package:flutter/material.dart';

class CriarSala extends StatefulWidget {
  const CriarSala({Key? key}) : super(key: key);

  @override
  _CriarSalaState createState() => _CriarSalaState();
}

class _CriarSalaState extends State<CriarSala> {
  String sala = ' 9999';
  String player1 = 'Jogador 1';
  String player2 = 'Jogador 2';
  String player3 = 'Jogador 3';
  String player4 = 'Jogador 4';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              BackButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.of(context).pushNamed('/menu');
                },
              ),
              SizedBox(
                width: 480,
              ),
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
              ButtonTheme(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/criarsala');
                },
                child: Text(
                  'Iniciar Partida',
                  style: TextStyle(fontSize: 14),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, fixedSize: Size(120, 45)),
              )),
            ],
          )
        ],
      ),
    );
  }
}

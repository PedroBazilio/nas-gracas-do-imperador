import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String nome = 'Nome do Usuário';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 30),
        Row(
          children: [
            SizedBox(width: 20),
            FloatingActionButton(
              child: Icon(Icons.work_sharp),
              onPressed: () {
                Navigator.of(context).pushNamed('/configs');
              },
            ),
            SizedBox(width: 140),
            Text('Olá, $nome', style: TextStyle(fontSize: 25)),
            SizedBox(width: 50),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              ButtonTheme(
                  child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Criar Sala',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, fixedSize: Size(180, 70)),
              )),
              SizedBox(width: 20),
              ButtonTheme(
                  child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Entrar em Sala',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, fixedSize: Size(180, 70)),
              )),
              SizedBox(width: 20),
              ButtonTheme(
                  child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Partida Rápida',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, fixedSize: Size(180, 70)),
              ))
            ],
          ),
        ),
        SizedBox(
          height: 75,
        ),
        Row(
          children: [
            SizedBox(width: 40),
            ButtonTheme(
                child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/tutorial');
              },
              child: Text(
                'Tutorial',
                style: TextStyle(fontSize: 15),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, fixedSize: Size(100, 40)),
            )),
            SizedBox(width: 400),
            ButtonTheme(
                child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/creditos');
              },
              child: Text(
                'Créditos',
                style: TextStyle(fontSize: 15),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, fixedSize: Size(100, 40)),
            ))
          ],
        )
      ]),
    );
  }
}

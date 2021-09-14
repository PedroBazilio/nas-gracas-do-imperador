import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_nas_gracas_do_imperador/personagens.dart';
//import 'package:imagebutton/imagebutton.dart';

String titulo = "Você ganhou!";

class Partida extends StatefulWidget {
  const Partida({Key? key}) : super(key: key);

  @override
  _PartidaState createState() => _PartidaState();
}

class _PartidaState extends State<Partida> {
  Widget _body() {
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(
                    color: Colors.black,
                    width: 10.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(
                    color: Colors.black,
                    width: 10.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 250,
                    padding: null,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/mapaBrasil.png"))),
                  ),
                  Container(
                    width: 414,
                    height: 250,
                    padding: null,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/carta1.png"))),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(
                    color: Colors.black,
                    width: 10.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              )
            ],
          ),
        ],
      )
          /*Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            TextButton(
              onPressed: () {
                _mostraDialogo(context);
              },
              child: const Text(
                "Clique aqui",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white
                ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green
              ),
            ),
          ],
        ),*/
          ),
      floatingActionButton: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: FloatingActionButton(
              child: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).pushNamed('/configs');
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              child: Icon(Icons.emoji_events),
              onPressed: null,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: FloatingActionButton(
              child: Icon(Icons.stacked_line_chart_rounded),
              onPressed: null,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _mostraDialogo(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Você ganhou!",
              textAlign: TextAlign.center,
            ),
            content:
                const Text("XXX é o novo presidente do conselho de ministros"),
            actions: [
              //Menu Principal
              Container(
                width: 200,
                height: 50,
                padding: null,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/menuNotPressed.png"))),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/menu');
                  },
                  child: const Text(""),
                ),
              ),

              //Jogar Novamente
              Container(
                width: 200,
                height: 50,
                padding: null,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/menuNotPressed.png"))),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/partida');
                  },
                  child: const Text(""),
                ),
              ),
            ],
          );
        });
    throw '';
  }
}

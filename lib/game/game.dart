import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        child: Column(
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
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _body()
      ],
    ));
  }

  Widget _mostraDialogo(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(

            title: const Text("Você ganhou!", textAlign: TextAlign.center,),
            content: const Text("XXX é o novo presidente do conselho de ministros"),
            actions: [
              //Menu Principal
              Container(
                width: 200,
                height: 50,
                padding: null,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/menuNotPressed.png")
                  )
                ),
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
                    image: AssetImage("assets/images/menuNotPressed.png")
                  )
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/partida');
                  },
                  child: const Text(""),
                ),
              ),
            ],
        );
      }
    );
    throw ''; 
  }
}
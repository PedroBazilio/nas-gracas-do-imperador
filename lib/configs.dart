import 'dart:ui';

import 'package:app_nas_gracas_do_imperador/services/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//PAGINA DAS CONFIGURAÇOES 

class Configs extends StatefulWidget {
  const Configs({Key? key}) : super(key: key);

  @override
  _ConfigsState createState() => _ConfigsState();
}

class _ConfigsState extends State<Configs> {
  bool sound = true;
  AuthService _auth = new AuthService();

  Widget _body() {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30,
                width: 90,
              ),
              //BOTAO PARA VOLTAR AO MENU
              BackButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.of(context).pushNamed('/menu');
                },
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                width: 500,
                height: 180,
              ),
              //TEXTO E SLIDER DO SOM
              TextButton(
                child: Text(
                  "Logout",
                  style: TextStyle(fontSize: 35),
                ),
                onPressed: () {
                  _auth.logout();
                  Navigator.of(context).pushNamed('/login');
                },
              )
            ],
          )
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
          child: Container(color: Colors.grey.shade400.withOpacity(0.2)),
        ),
        _body()
      ],
    ));
  }
}

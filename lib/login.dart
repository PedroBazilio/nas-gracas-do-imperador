import 'dart:ui';

import 'package:app_nas_gracas_do_imperador/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool check = false;
  String email = "";
  String senha = "";
  AuthService _auth = AuthService();

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Login',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 130,
              ),
              Text(
                'Usuário:  ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Flexible(
                child: TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  decoration: InputDecoration(
                      labelText: 'Insira seu nome',
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                width: 120,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 130,
              ),
              Text(
                'Senha:    ',
                style: TextStyle(fontSize: 20),
              ),
              Flexible(
                child: TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Insira a senha',
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                width: 120,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 450,
              ),
              ButtonTheme(
                  child: ElevatedButton(
                onPressed: () {
                  // check = Autenticacao();
                  _auth.login(email, senha).then((resultado) {
                    try {
                      print("resultado: " + resultado.toString());
                      if (resultado == null) {
                        print("autenticou-----");
                        print(resultado);
                        Navigator.of(context).pushNamed('/menu');
                      } else {
                        print("Retorno login não nulo do registro-----");
                        print(resultado);
                       
                        //  Scaffold.of(context).showSnackBar(SnackBar(
                        //      content: Text(
                        //      resultado,
                        //     style: TextStyle(fontSize: 16),
                        //        ),
                        //   ));
                      }
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'user-not-found') {
                         showAlertDialog(context, 'Email não encontrado. Cadastre-se.');
                      } else if (e.code == 'wrong-password') {
                        showAlertDialog(context, 'Senha incorreta. Tente novamente');
                      } else {
                        showAlertDialog(context, e.message.toString());
                      }
                    }
                  });
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, fixedSize: Size(110, 40)),
              )),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Text(
                'Ainda não possui uma conta?',
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 110,
              ),
              ButtonTheme(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/criarconta');
                },
                child: Text(
                  'Criar conta',
                  style: TextStyle(fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, fixedSize: Size(110, 40)),
              )),
            ],
          )
        ],
      ),
    );
  }

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
          child: Container(color: Colors.grey.shade200.withOpacity(0.2)),
        ),
        _body()
      ],
    ));
  }

  showAlertDialog(BuildContext context, String texto) {
    // configura os botões
    Widget lembrarButton = TextButton(
      child: Text("Login"),
      onPressed: () {
        Navigator.of(context).pushNamed('/criarconta');
      },
    );
    // configura o  AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Autenticação falhou!"),
      content: Text(texto),
      actions: [
        lembrarButton,
      ],
    );
    // exibe o dialogo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  // bool Autenticacao() {
  //   bool retorno = false;

  //   return retorno;
  // }
}

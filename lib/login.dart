// ignore_for_file: avoid_print

import 'dart:ui';

import 'package:app_nas_gracas_do_imperador/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//PAGINA REFERENTE AO LOGIN DO USUARIO

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
          //TITULO DA PAGINA - LOGIN
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
              //TEXTO E TEXTFIELD PARA O NOME DO USUARIO
              Text(
                'Email:  ',
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
                      labelText: 'Insira seu email',
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
              //TEXTO E TEXTFIELD PARA A SENHA
              Text(
                'Senha: ',
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
              //BOTAO DE LOGIN QUE LEVA O JOGADOR AO MENU, CASO PASSE PELA AUTENTICA??AO
              ButtonTheme(
                  child: ElevatedButton(
                onPressed: () {
                  if (email.isNotEmpty && senha.isNotEmpty) {
                    _auth.login(email, senha).then((resultado) {
                      Navigator.of(context).pushNamed('/menu');
                    }).catchError((e, stackTrace) {
                      if (e.code == 'user-not-found') {
                        showAlertDialog(
                            context,
                            'Email n??o encontrado. Cadastre-se.',
                            "Cadastrar",
                            "/criarconta");
                      } else if (e.code == 'wrong-password') {
                        showAlertDialog(context,
                            'Senha incorreta. Tente novamente', "Ok", "/login");
                      } else if (e.code == 'invalid-email') {
                        showAlertDialog(context, 'Digite um e-mail v??lido!',
                            "Ok", "/login");
                      } else {
                        showAlertDialog(
                            context, e.message.toString(), "Ok", "/login");
                      }
                    });
                  } else {
                    showAlertDialog(
                        context,
                        '?? necess??rio preencher todos os campos!',
                        "Ok",
                        "/login");
                  }
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
                'Ainda n??o possui uma conta?',
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
              //BOTAO QUE REDIRECIONA O JOGADOR A PAGINA DE CRIA??AO DE CONTA
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
          child: Container(color: Colors.grey.shade200.withOpacity(0.2)),
        ),
        _body()
      ],
    ));
  }

  showAlertDialog(BuildContext context, String texto, String textoBotao,
      String telaNavegacao) {
    // configura os bot??es
    Widget lembrarButton = TextButton(
      child: Text(textoBotao),
      onPressed: () {
        if (telaNavegacao.isNotEmpty) {
          Navigator.of(context).pushNamed(telaNavegacao);
        }
      },
    );
    // configura o  AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Autentica????o Falhou!"),
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

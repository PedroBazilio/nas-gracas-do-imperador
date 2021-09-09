import 'dart:ui';

import 'package:app_nas_gracas_do_imperador/global_vars.dart';
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
                'Usuário:  ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Flexible(
                child: TextField(
                  onChanged: (text) {
                    Usuario.nome = text;
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
              //TEXTO E TEXTFIELD PARA A SENHA
              Text(
                'Senha:    ',
                style: TextStyle(fontSize: 20),
              ),
              Flexible(
                child: TextField(
                  onChanged: (text) {
                    Usuario.senha = text;
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
              //BOTAO DE LOGIN QUE LEVA O JOGADOR AO MENU, CASO PASSE PELA AUTENTICAÇAO
              ButtonTheme(
                  child: ElevatedButton(
                onPressed: () {
                  check = Autenticacao();
                  if (check == true) {
                    Navigator.of(context).pushNamed('/menu');
                  } else {
                    showAlertDialog(context);
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
              //BOTAO QUE REDIRECIONA O JOGADOR A PAGINA DE CRIAÇAO DE CONTA
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

//POPUP AO FALHAR A AUTENTICAÇAO DO LOGIN
  showAlertDialog(BuildContext context) {
    // configura os botões
    Widget lembrarButton = TextButton(
      child: Text("Criar conta"),
      onPressed: () {
        Navigator.of(context).pushNamed('/criarconta');
      },
    );
    // configura o  AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Autenticação falhou!"),
      content: Text('Insira os dados corretos ou crie uma conta nova.'),
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
}

//AUTENTICAÇAO DAS INFORMAÇOES DO USUARIO
bool Autenticacao() {
  if (Usuario.nome == 'usuario' && Usuario.senha == 'senha123') {
    return true;
  } else {
    return false;
  }
}

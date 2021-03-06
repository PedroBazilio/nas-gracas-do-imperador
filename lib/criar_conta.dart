import 'dart:ui';

import 'package:app_nas_gracas_do_imperador/model/usuario.dart';
import 'package:app_nas_gracas_do_imperador/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global_vars.dart';

//PAGINA DA CRIAÇAO DE CONTA

class CriarConta extends StatefulWidget {
  const CriarConta({Key? key}) : super(key: key);

  @override
  _CriarContaState createState() => _CriarContaState();
}

class _CriarContaState extends State<CriarConta> {
  bool check = false;
  String usuario = "";
  String email = "";
  String senha = "";
  AuthService _auth = AuthService();

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          //TITULO DA PAGINA - CRIE SUA CONTA
          Text(
            'Crie sua conta',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 142,
              ),
              Text(
                'E-mail:  ',
                style: TextStyle(fontSize: 20),
              ),
              Flexible(
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                  decoration: InputDecoration(
                      labelText: 'Insira seu e-mail',
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
                width: 128,
              ),
              //TEXTO E TEXTFIELD DO NOME DO USUARIO
              Text(
                'Usuário:  ',
                style: TextStyle(fontSize: 20),
              ),
              Flexible(
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      usuario = val;
                    });
                    print(usuario);
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
              //TEXTO E TEXTFIELD DA SENHA
              Text(
                'Senha:    ',
                style: TextStyle(fontSize: 20),
              ),
              Flexible(
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      senha = val;
                    });
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
              //BOTAO CRIAR CONTA
              ButtonTheme(
                  child: ElevatedButton(
                onPressed: () {
                  // check = Autenticacao(context);
                  _auth
                      .registrarComEmailESenha(email, senha, usuario)
                      .then((resultado) {
                    if (resultado.user != null) {
                      Navigator.of(context).pushNamed('/menu');
                    } else {
                      showAlertDialog(context, "Criação Falhou!",
                          "Erro ao criar usuário!", "Ok", "/criarconta");
                    }
                  }).catchError((e, stackTrace) {
                    if (e.code == 'weak-password') {
                      showAlertDialog(
                          context,
                          "Criação Falhou!",
                          'Senha muito fraca! Por favor, tente novamente.',
                          "Ok",
                          "/criarconta");
                    } else if (e.code == 'invalid-email') {
                      showAlertDialog(context, "Criação Falhou!",
                          'Digite um e-mail válido!', "Ok", "/criarconta");
                    } else {
                      showAlertDialog(context, "Criação Falhou!",
                          e.message.toString(), "Ok", "/criarconta");
                    }
                  });
                  ;
                },
                // Navigator.of(context).pushNamed('/menu');

                child: Text(
                  'Criar conta',
                  style: TextStyle(fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, fixedSize: Size(110, 40)),
              )),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 70,
              ),
              Text(
                'Já possui uma conta?',
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
              ),
              //BOTAO PARA SER REDIRECIONADO A PAGINA DE LOGIN
              ButtonTheme(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
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

//COLOCA O FUNDO BORRADO
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

  showAlertDialog(BuildContext context, String titulo, String texto,
      String textoBotao, String telaNavegacao) {
    // configura os botões
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
      title: Text(titulo),
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

  // bool Autenticacao(BuildContext context) {
  //   bool retorno = false;

  //   // } on AuthException catch (e) {
  //   //   print("catch 1");

  //   //   showAlertDialog(context, e.toString());
  //   //   return false;
  //   // } on Exception catch(ex){
  //   //   print("catch 2");
  //   // }
  //   return retorno;
  // }

}

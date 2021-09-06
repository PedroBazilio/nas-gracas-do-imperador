import 'dart:ui';

import 'package:app_nas_gracas_do_imperador/services/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CriarConta extends StatefulWidget {
  const CriarConta({Key? key}) : super(key: key);

  @override
  _CriarContaState createState() => _CriarContaState();
}

class _CriarContaState extends State<CriarConta> {
  String usuario = '';
  String senha = '';
  final AuthService _auth = AuthService();

  dynamic resultado;

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Crie sua conta',
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
              ButtonTheme(
                  child: ElevatedButton(
                onPressed: () async => {
                  if(usuario.isEmpty || senha.isEmpty){
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Dados Inválidos'),
                        content: const Text('Por favor, preencha todos os campos! '),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK')
                          ),
                        ],
                      ),
                    )
                  } else {
                    // resultado = await _auth.registrarComEmailESenha(usuario, senha);
                    Navigator.of(context).pushNamed('/menu')
                  }
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
          SizedBox(
            height: 15,
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
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 100,
              ),
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
}

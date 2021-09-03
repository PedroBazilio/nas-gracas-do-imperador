import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String usuario = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                  style: TextStyle(fontSize: 20),
                ),
                Flexible(
                  child: TextField(
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
                    Navigator.of(context).pushNamed('/menu');
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
      ),
    );
  }
}

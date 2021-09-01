import 'package:flutter/material.dart';

class Creditos extends StatefulWidget {
  const Creditos({Key? key}) : super(key: key);

  @override
  _CreditosState createState() => _CreditosState();
}

class _CreditosState extends State<Creditos> {
  String text =
      'João Pedro – Documentação\n\nArthur Resende – Desenvolvimento de Jogabilidade\n\nThamires – Desenvolvimento de Jogabilidade\n\nErick – Banco de dados\n\nGustavo Miranda – Criação de menus\n\nPedro Bazilio – Artefatos Gráficos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: 75,
                  child: BackButton(
                    color: Colors.black,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/menu');
                    },
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 45,
                    width: 500,
                  ),
                  Text(
                    'Créditos',
                    style: TextStyle(fontSize: 50),
                  ),
                  SizedBox(height: 30),
                  Text(
                    text,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

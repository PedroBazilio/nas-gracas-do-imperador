import 'package:flutter/material.dart';
import 'dart:math';
import 'textos.dart';
import 'gabaritos.dart';

/*
Essa widget é uma carta de votação, possuindo o texto na frente e o "gabarito" no verso.
O texto e o seu respectivo gabarito são selecionados aleatoriamente quando a carta é gerada,
como se ela fosse selecionada de um baralho.
Para virar a carta, é só clicar nela duas vezes.
*/

final _random = new Random();
int next(int min, int max) => min + _random.nextInt(max - min);

class carta_vot extends StatefulWidget {
  const carta_vot({Key? key}) : super(key: key);

  @override
  _carta_votState createState() => _carta_votState();
}

class _carta_votState extends State<carta_vot> {
  bool verso = false;
  int carta = next(0, 16);
  String texto = '';
  Material gab = Material();
  double angulo = 0.0;

  void _flip() {
    setState(() {
      angulo = (angulo + pi) % (2 * pi);
    });
  }

  @override
  Widget build(BuildContext context) {

    switch (carta) {
      case 0:
        texto = texto1_1;
        gab = gab1;
        break;
      case 1:
        texto = texto1_2;
        gab = gab1;
        break;
      case 2:
        texto = texto2_1;
        gab = gab2;
        break;
      case 3:
        texto = texto2_2;
        gab = gab2;
        break;
      case 4:
        texto = texto3_1;
        gab = gab3;
        break;
      case 5:
        texto = texto3_2;
        gab = gab3;
        break;
      case 6:
        texto = texto4_1;
        gab = gab4;
        break;
      case 7:
        texto = texto4_2;
        gab = gab4;
        break;
      case 8:
        texto = texto5_1;
        gab = gab5;
        break;
      case 9:
        texto = texto5_2;
        gab = gab5;
        break;
      case 10:
        texto = texto6_1;
        gab = gab6;
        break;
      case 11:
        texto = texto6_2;
        gab = gab6;
        break;
      case 12:
        texto = texto7_1;
        gab = gab7;
        break;
      case 13:
        texto = texto7_2;
        gab = gab7;
        break;
      case 14:
        texto = texto8_1;
        gab = gab8;
        break;
      case 15:
        texto = texto8_2;
        gab = gab8;
        break;
      default:
    }

    return GestureDetector(
      onDoubleTap: _flip,
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0.0, end: angulo),
          duration: Duration(seconds: 1),
          builder: (BuildContext context, double val, __) {
            if (val >= (pi / 2)) {
              verso = true;
            } else {
              verso = false;
            }
            return (Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(val),
              child: Container(
                  width: 300.0,
                  height: 150.0,
                  child: verso
                      ? Material(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 12.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Center(
                              child: gab,
                            ),
                          ),
                        )
                      : Material(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 12.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.grey[600],
                            ),
                            child: Center(
                              child: Text(
                                texto,
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )),
            ));
          }),
    );
  }
}

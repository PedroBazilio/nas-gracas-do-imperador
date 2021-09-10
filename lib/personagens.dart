import 'package:flutter/material.dart';

class Personagem1 extends StatelessWidget {
  const Personagem1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          color: Colors.black,
          width: 20.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 120.0,
              child: Column(
                children: [
                  Text(
                    'Personagem',
                    style: TextStyle(fontSize: 40.0, color: Colors.black)
                    ),
                  SizedBox(height: 40.0),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/corrente-vermelho.png'), width: 130.0),
                      SizedBox(width: 75.0),
                      Image(image: AssetImage('assets/coroa-vermelho.png'), width: 130.0),
                    ],
                  ),
                  SizedBox(height: 50.0),
                  Image(image: AssetImage('assets/igreja-verde.png'), width: 130.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// As outras cartas de personagens são construiídas da mesma forma que a primeira

class Personagem2 extends StatelessWidget {
  const Personagem2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          color: Colors.black,
          width: 20.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 120.0,
              child: Column(
                children: [
                  Text(
                    'Personagem',
                    style: TextStyle(fontSize: 40.0, color: Colors.black)
                    ),
                  SizedBox(height: 40.0),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/corrente-vermelho.png'), width: 130.0),
                      SizedBox(width: 75.0),
                      Image(image: AssetImage('assets/coroa-verde.png'), width: 130.0),
                    ],
                  ),
                  SizedBox(height: 50.0),
                  Image(image: AssetImage('assets/igreja-verde.png'), width: 130.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Personagem3 extends StatelessWidget {
  const Personagem3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          color: Colors.black,
          width: 20.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 120.0,
              child: Column(
                children: [
                  Text(
                    'Personagem',
                    style: TextStyle(fontSize: 40.0, color: Colors.black)
                    ),
                  SizedBox(height: 40.0),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/corrente-vermelho.png'), width: 130.0),
                      SizedBox(width: 75.0),
                      Image(image: AssetImage('assets/coroa-vermelho.png'), width: 130.0),
                    ],
                  ),
                  SizedBox(height: 50.0),
                  Image(image: AssetImage('assets/igreja-vermelho.png'), width: 130.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Personagem4 extends StatelessWidget {
  const Personagem4({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          color: Colors.black,
          width: 20.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 120.0,
              child: Column(
                children: [
                  Text(
                    'Personagem',
                    style: TextStyle(fontSize: 40.0, color: Colors.black)
                    ),
                  SizedBox(height: 40.0),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/corrente-vermelho.png'), width: 130.0),
                      SizedBox(width: 75.0),
                      Image(image: AssetImage('assets/coroa-verde.png'), width: 130.0),
                    ],
                  ),
                  SizedBox(height: 50.0),
                  Image(image: AssetImage('assets/igreja-vermelho.png'), width: 130.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Personagem5 extends StatelessWidget {
  const Personagem5({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          color: Colors.black,
          width: 20.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 120.0,
              child: Column(
                children: [
                  Text(
                    'Personagem',
                    style: TextStyle(fontSize: 40.0, color: Colors.black)
                    ),
                  SizedBox(height: 40.0),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/corrente-verde.png'), width: 130.0),
                      SizedBox(width: 75.0),
                      Image(image: AssetImage('assets/coroa-vermelho.png'), width: 130.0),
                    ],
                  ),
                  SizedBox(height: 50.0),
                  Image(image: AssetImage('assets/igreja-verde.png'), width: 130.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Personagem6 extends StatelessWidget {
  const Personagem6({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          color: Colors.black,
          width: 20.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 120.0,
              child: Column(
                children: [
                  Text(
                    'Personagem',
                    style: TextStyle(fontSize: 40.0, color: Colors.black)
                    ),
                  SizedBox(height: 40.0),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/corrente-verde.png'), width: 130.0),
                      SizedBox(width: 75.0),
                      Image(image: AssetImage('assets/coroa-verde.png'), width: 130.0),
                    ],
                  ),
                  SizedBox(height: 50.0),
                  Image(image: AssetImage('assets/igreja-verde.png'), width: 130.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Personagem7 extends StatelessWidget {
  const Personagem7({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          color: Colors.black,
          width: 20.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 120.0,
              child: Column(
                children: [
                  Text(
                    'Personagem',
                    style: TextStyle(fontSize: 40.0, color: Colors.black)
                    ),
                  SizedBox(height: 40.0),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/corrente-verde.png'), width: 130.0),
                      SizedBox(width: 75.0),
                      Image(image: AssetImage('assets/coroa-vermelho.png'), width: 130.0),
                    ],
                  ),
                  SizedBox(height: 50.0),
                  Image(image: AssetImage('assets/igreja-vermelho.png'), width: 130.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Personagem8 extends StatelessWidget {
  const Personagem8({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          color: Colors.black,
          width: 20.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              top: 120.0,
              child: Column(
                children: [
                  Text(
                    'Personagem',
                    style: TextStyle(fontSize: 40.0, color: Colors.black)
                    ),
                  SizedBox(height: 40.0),
                  Row(
                    children: [
                      Image(image: AssetImage('assets/corrente-verde.png'), width: 130.0),
                      SizedBox(width: 75.0),
                      Image(image: AssetImage('assets/coroa-verde.png'), width: 130.0),
                    ],
                  ),
                  SizedBox(height: 50.0),
                  Image(image: AssetImage('assets/igreja-vermelho.png'), width: 130.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Tabuleiro extends StatelessWidget {
  const Tabuleiro({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image(image: AssetImage('assets/images/mapa brasil.png')),
            Positioned(
              bottom: 50.0,
              left: 140.0,
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/-2.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(image: AssetImage('assets/images/-1.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(image: AssetImage('assets/images/0.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(image: AssetImage('assets/images/+1.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(image: AssetImage('assets/images/+2.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(color: Colors.white, image: AssetImage('assets/images/Deputado.png'), width: 240.0,),
                ],
              ),
            ),
            Positioned(
              bottom: 300.0,
              right: 140.0,
              child: Row(
                children: [
                  Image(color: Colors.white, image: AssetImage('assets/images/Senador.png'), width: 240.0,),
                  SizedBox(width: 30.9,),
                  Image(image: AssetImage('assets/images/+2.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(image: AssetImage('assets/images/+1.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(image: AssetImage('assets/images/0.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(image: AssetImage('assets/images/-1.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(image: AssetImage('assets/images/-2.png'), width: 50.0,),
                ],
              ),
            ),
            Positioned(
              bottom: 550.0,
              left: 140.0,
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/-2.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(image: AssetImage('assets/images/-1.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(image: AssetImage('assets/images/0.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(image: AssetImage('assets/images/+1.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(image: AssetImage('assets/images/+2.png'), width: 50.0,),
                  SizedBox(width: 30.9,),
                  Image(color: Colors.white, image: AssetImage('assets/images/Ministro.png'), width: 240.0,),
                ],
              ),
            ),
            Positioned(
              bottom: 700.0,
              left: 352.5,
              child: Column(
                children: [
                  Image(
                    color: Colors.white,
                    image: AssetImage('assets/images/Presidente do Conselho de  Ministros.png'),
                    height: 100.0,
                  ),
                  SizedBox(height: 30.9,),
                  Image(
                    image: AssetImage('assets/images/WIN.png'),
                    height: 50.0,
                    ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
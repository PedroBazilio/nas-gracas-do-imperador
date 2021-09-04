import 'package:flutter/material.dart';

class Inicial extends StatefulWidget {
  const Inicial({Key? key}) : super(key: key);

  @override
  _InicialState createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg-inicio.png"),
            fit: BoxFit.cover),
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pushNamed('/login'),
      ),
    ));
  }
}

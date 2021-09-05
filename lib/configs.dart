import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Configs extends StatefulWidget {
  const Configs({Key? key}) : super(key: key);

  @override
  _ConfigsState createState() => _ConfigsState();
}

class _ConfigsState extends State<Configs> {
  bool sound = true;

  Widget _body() {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30,
                width: 80,
              ),
              BackButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.of(context).pushNamed('/menu');
                },
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                width: 500,
                height: 180,
              ),
              Row(
                children: [
                  Text(
                    'Som: ',
                    style: TextStyle(fontSize: 30),
                  ),
                  Switch(
                    value: sound,
                    onChanged: (value) {
                      print('foi');
                      setState(() {
                        sound = value;
                      });
                    },
                  ),
                ],
              ),
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
          child: Container(color: Colors.grey.shade400.withOpacity(0.2)),
        ),
        _body()
      ],
    ));
  }
}

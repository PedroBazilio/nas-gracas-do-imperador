import 'dart:ui';

import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({Key? key}) : super(key: key);

  @override
  _TutorialState createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  String text =
      'Este é o texto do tutorial. \nEste é o texto do tutorial. \nEste é o texto do tutorial. \nEste é o texto do tutorial.\nEste é o texto do tutorial. \nEste é o texto do tutorial. \nEste é o texto do tutorial. \nEste é o texto do tutorial.\nEste é o texto do tutorial. \nEste é o texto do tutorial. \nEste é o texto do tutorial. \nEste é o texto do tutorial.\nEste é o texto do tutorial. \nEste é o texto do tutorial. \nEste é o texto do tutorial. \nEste é o texto do tutorial.';

  Widget _body() {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(height: 50),
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
              children: [
                SizedBox(
                  height: 60,
                  width: 500,
                ),
                Text(
                  'Tutorial',
                  style: TextStyle(fontSize: 50),
                ),
                SizedBox(height: 30),
                Text(
                  text,
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ),
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

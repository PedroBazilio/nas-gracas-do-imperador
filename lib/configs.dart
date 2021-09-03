import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Configs extends StatefulWidget {
  const Configs({Key? key}) : super(key: key);

  @override
  _ConfigsState createState() => _ConfigsState();
}

class _ConfigsState extends State<Configs> {
  bool sound = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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
                height: 150,
              ),
              Switch(
                value: sound,
                onChanged: (value) {
                  setState(() {
                    sound = value;
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

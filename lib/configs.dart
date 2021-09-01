import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Configs extends StatefulWidget {
  const Configs({Key? key}) : super(key: key);

  @override
  _ConfigsState createState() => _ConfigsState();
}

class _ConfigsState extends State<Configs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
            width: 80,
          ),
          Container(
              child: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pushNamed('/menu');
            },
          )),
        ],
      ),
    );
  }
}

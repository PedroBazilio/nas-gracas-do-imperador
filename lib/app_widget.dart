import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_nas_gracas_do_imperador/configs.dart';
import 'package:app_nas_gracas_do_imperador/criar_conta.dart';
import 'package:app_nas_gracas_do_imperador/menu.dart';
import 'package:app_nas_gracas_do_imperador/tutorial.dart';
import 'package:app_nas_gracas_do_imperador/creditos.dart';
import 'app_controller.dart';
import 'creditos.dart';
import 'login.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    config();
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(initialRoute: '/', routes: {
            '/': (context) => Login(),
            '/menu': (context) => Menu(),
            '/tutorial': (context) => Tutorial(),
            '/creditos': (context) => Creditos(),
            '/configs': (context) => Configs(),
            '/criarconta': (context) => CriarConta(),
            //'/lobby': (context) => Lobby(),
            //'/game': (context) => Game(),
          });
        });
  }
}

void config() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
}

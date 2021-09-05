import 'package:app_nas_gracas_do_imperador/criar_sala.dart';
import 'package:app_nas_gracas_do_imperador/partida_rapida.dart';
import 'package:app_nas_gracas_do_imperador/pre_game_lobby.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_nas_gracas_do_imperador/criar_conta.dart';
import 'package:app_nas_gracas_do_imperador/menu.dart';
import 'package:app_nas_gracas_do_imperador/tutorial.dart';
import 'package:app_nas_gracas_do_imperador/creditos.dart';
import '../login.dart';
import 'inicial.dart';
import 'app_controller.dart';
import 'configs.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    config();
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(initialRoute: '/', routes: {
            '/': (context) => Inicial(),
            '/login': (context) => Login(),
            '/menu': (context) => Menu(),
            '/tutorial': (context) => Tutorial(),
            '/creditos': (context) => Creditos(),
            '/configs': (context) => Configs(),
            '/criarconta': (context) => CriarConta(),
            '/criarsala': (context) => CriarSala(),
            '/partidarapida': (context) => PartidaRapida(),
            '/pregamelobby': (context) => PreGameLobby(),
            //'/game': (context) => Game(),
          });
        });
  }
}

void config() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
}

import 'package:app_nas_gracas_do_imperador/global_vars.dart';
import 'package:app_nas_gracas_do_imperador/services/auth_service.dart';
import 'package:flutter/material.dart';

//PAGINA REFERENTE AO MENU DO JOGO

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  AuthService _auth = AuthService();

  String? nome = "Jogador";

  _MenuState(){
    print("Antes pegar displayname");
    nome = _auth.usuario!.displayName;
  }
  
  Widget _body() {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: 30),
        Row(
          children: [
            SizedBox(width: 20),
            //BOTAO QUE REDIRECIONA O JOGADOR A TELA DE CONFIGURAÇOES
            FloatingActionButton(
              child: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).pushNamed('/configs');
              },
            ),
            SizedBox(width: 180),
            //TEXTO COM O NOME DO USUARIO
            Text('Olá, $nome', style: TextStyle(fontSize: 25)),
            SizedBox(width: 50),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              SizedBox(
                width: 25,
              ),
              //BOTAO DE CRIAR SALA
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/CriarSala.png'),
                )),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => Navigator.of(context).pushNamed('/criarsala'),
                ),
              ),
              SizedBox(width: 20),
              //BOTAO PARA O JOGADOR ENTRAR EM UMA SALA ESPECIFICA
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/EntrarEmSala.png'),
                )),
                child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => showAlertDialog(context)),
              ),
              SizedBox(width: 20),
              //BOTAO PARA O JOGADOR BUSCAR UMA PARTIDA ALEATORIA
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/PartidaRapida.png'),
                )),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () =>
                      Navigator.of(context).pushNamed('/partidarapida'),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          children: [
            SizedBox(width: 35),
            //BOTAO QUE REDIRECIONA O JOGADOR A TELA DO TUTORIAL DO JOGO
            Container(
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/TutorialNotPressed.png'),
              )),
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => Navigator.of(context).pushNamed('/tutorial'),
              ),
            ),
            SizedBox(width: 420),
            //BOTAO QUE REDIRECIONA O JOGADOR A TELA DE CREDITOS
            Container(
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/CreditosNotPressed.png'),
              )),
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => Navigator.of(context).pushNamed('/creditos'),
              ),
            )
          ],
        )
      ]),
    );
  }

//COLOCAR O FUNDO
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
        _body()
      ],
    ));
  }

//POPUP PARA O JOGADOR DIGITAR O ID DA SALA QUE DESEJA ENTRAR, QUANDO SELECIONAR A OPCAO DE ENTRAR EM SALA
  showAlertDialog(BuildContext context) {
    // configura os botões
    Widget lembrarButton = TextButton(
      child: Text("Entrar"),
      onPressed: () {
        _auth.logout();
        Navigator.of(context).pushNamed('/pregamelobby');
      },
    );
    // configura o  AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Informe o número da sala:"),
      content: TextField(
        decoration: InputDecoration(
            labelText: 'número da sala', border: OutlineInputBorder()),
      ),
      actions: [
        lembrarButton,
      ],
    );
    // exibe o dialogo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

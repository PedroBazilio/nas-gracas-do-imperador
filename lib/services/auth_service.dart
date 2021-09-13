import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthException implements Exception {
  String message;
  AuthException(this.message);
}

class AuthService extends ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;
  User? usuario;
  bool isLoading = true;

  AuthService() {
    _getUsuario();
    _authCheck();
  }

  _authCheck() {
    _auth.authStateChanges().listen((User? user) {
      print("usuario logado no listener!");
      print(user);
      usuario = (user == null) ? null : user;
      isLoading = false;
      notifyListeners();
    });
  }

  _getUsuario() {
    usuario = _auth.currentUser;
    notifyListeners();
  }

  Future<UserCredential> login(String email, String senha) async {
    UserCredential credencial;
    credencial = await _auth.signInWithEmailAndPassword(email: email, password: senha);
    _getUsuario();
    return credencial;
  }

  logout() async {
    await _auth.signOut();
    _getUsuario();
    print("logout sucesso");
    print(usuario);
  }

  Future registrarComEmailESenha(
      String email, String senha, String nome) async {
    UserCredential novoUsuario;
    try {
      novoUsuario = await _auth.createUserWithEmailAndPassword(
          email: email, password: senha);
      print("usuario criado: $novoUsuario");
      await novoUsuario.user!.updateDisplayName(nome);
      _getUsuario();
      // new Usuario.criarUsuario(
      //     idUsuario: usuario!.uid,
      //     nome: usuario,
      //     email: usuario!.email);
    } on FirebaseAuthException catch (e) {
      // if (e.code == 'weak-password') {
      //   throw AuthException('A senha é muito fraca!');}
      if (e.code == 'email-already-in-use') {
        throw AuthException('Este email já está cadastrado');
      } else {
        return Future.error(e, StackTrace.fromString("This is its trace"));
        // throw AuthException("Falha ao criar usuário!\n" + e.message.toString());
      }
    }
  }
}

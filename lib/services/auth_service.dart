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
    credencial =
        await _auth.signInWithEmailAndPassword(email: email, password: senha);
    _getUsuario();
    return credencial;
  }

  logout() async {
    await _auth.signOut();
    _getUsuario();
  }

  Future<UserCredential> registrarComEmailESenha(
      String email, String senha, String nome) async {
    UserCredential novoUsuario;
    novoUsuario = await _auth.createUserWithEmailAndPassword(
        email: email, password: senha);
    await novoUsuario.user!.updateDisplayName(nome);
    _getUsuario();
    // new Usuario.criarUsuario(
    //     idUsuario: usuario!.uid,
    //     nome: usuario,
    //     email: usuario!.email);

    return novoUsuario;
  }
}

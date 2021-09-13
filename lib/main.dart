import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:app_nas_gracas_do_imperador/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AppWidget());
}

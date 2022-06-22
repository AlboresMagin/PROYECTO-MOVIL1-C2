import 'package:flutter/material.dart';
import 'package:movil_proyecto_c2/pages/login/ChangePassword.dart';
import 'package:movil_proyecto_c2/pages/login/fortgot.dart';
import 'package:movil_proyecto_c2/pages/login/home.dart';
import 'package:movil_proyecto_c2/pages/login/login.dart';
import 'package:movil_proyecto_c2/pages/login/register.dart';
import 'package:movil_proyecto_c2/splash/splas_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica 1',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const ForgotPassword(),
    );
  }
}

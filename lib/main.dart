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
      title: 'Proyecto Page',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: 'changePassword',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => Login(),
        'register': (BuildContext context) => Register(),
        'changePassword': (BuildContext context) => ChangePassword(),
        'forgotPassword': (BuildContext context) => ForgotPassword(),
      },
    );
  }
}

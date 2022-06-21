import 'package:flutter/material.dart';
import 'package:movil_proyecto_c2/splash/splash_view.dart';

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
      home: SplashView(),
    );
  }
}

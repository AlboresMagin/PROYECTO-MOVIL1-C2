import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movil_proyecto_c2/splash/splash_canva.dart';

import 'dart:ui' as ui;

import '../on_boarding.dart';
// Importaciones clase Vistas


class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  ui.Image? image;

  @override
  void initState() {
    _image("assets/images/splash.png");
    _toOnbording();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: CustomPaint(
            painter: SplashCanvas(imageCanvas: image),
          ),
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }

  _toOnbording() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
      context,
      _createRoute(const OnBoarding()),
    );
  }

  Route _createRoute(Widget widget) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => widget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return ScaleTransition(
            scale: animation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 600));
  }

  _image(String path) async {
    final data = await rootBundle.load(path);
    final bits = data.buffer.asUint8List();
    final image = await decodeImageFromList(bits);
    setState(() {
      this.image = image;
    });
  }
}
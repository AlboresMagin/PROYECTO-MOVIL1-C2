import 'package:flutter/material.dart';
import "dart:ui" as ui;

import 'package:flutter/services.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();
    _loadImage('assets/images/splash.png');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
            child: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _SplashCanvas(image),
      ),
    )));
  }

  _loadImage(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();
    final image = await decodeImageFromList(bytes);

    setState(() => this.image = image);
  }
}

class _SplashCanvas extends CustomPainter {
  final ui.Image? imageCanvas;
  const _SplashCanvas(this.imageCanvas);

  @override
  void paint(Canvas canvas, Size size) {
    final textStyle = TextStyle(
      color: Colors.black,
      fontSize: 30,
    );

    final textSpan = TextSpan(
      text: "@magin_albores",
      style: textStyle,
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    final offset = Offset(70, 550);
    textPainter.paint(canvas, offset);

    final paint = Paint();

    paint.color = Colors.green;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();
    path.lineTo(0, size.height * 0.10);
    var val = 1.0;

    path.relativeQuadraticBezierTo(50, val * 60, 180, -5);
    path.relativeQuadraticBezierTo(60, -val * 20, 100, 0);
    path.relativeQuadraticBezierTo(120, val * 40, 180, 0);
    path.lineTo(size.width, 0);

    path.moveTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 0.65, size.height * 0.8, size.width * 0.98, size.height);

    canvas.drawPath(path, paint);
    canvas.scale(0.24, 0.24);

    canvas.drawImage(imageCanvas!, const Offset(190 * 2.5, 430 * 3.0), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

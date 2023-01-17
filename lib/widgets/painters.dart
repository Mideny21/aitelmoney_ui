import 'package:flutter/material.dart';

class RopePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.grey;
    paint.strokeWidth = 3;
    paint.style = PaintingStyle.stroke;

    canvas.drawLine(Offset(0, 0), Offset(0, 20), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class HolderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.grey;
    paint.strokeWidth = 5;
    paint.style = PaintingStyle.stroke;

    canvas.drawLine(const Offset(0, 0), Offset(30, 0), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

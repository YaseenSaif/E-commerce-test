import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Get.theme.colorScheme.secondary;
    path = Path();
    path.lineTo(size.width * 0.92, size.height);
    path.cubicTo(size.width * 0.94, size.height, size.width * 0.96,
        size.height * 0.97, size.width * 0.98, size.height * 0.91);
    path.cubicTo(size.width, size.height * 0.86, size.width, size.height * 0.78,
        size.width, size.height * 0.7);
    path.cubicTo(size.width, size.height * 0.63, size.width, size.height * 0.56,
        size.width * 0.98, size.height / 2);
    path.cubicTo(size.width * 0.98, size.height / 2, size.width * 0.89,
        size.height * 0.16, size.width * 0.89, size.height * 0.16);
    path.cubicTo(size.width * 0.88, size.height * 0.11, size.width * 0.86,
        size.height * 0.07, size.width * 0.84, size.height * 0.04);
    path.cubicTo(size.width * 0.83, size.height * 0.01, size.width * 0.81, 0,
        size.width * 0.79, 0);
    path.cubicTo(
        size.width * 0.79, 0, size.width * 0.14, 0, size.width * 0.14, 0);
    path.cubicTo(size.width * 0.1, 0, size.width * 0.07, size.height * 0.05,
        size.width * 0.04, size.height * 0.15);
    path.cubicTo(size.width * 0.01, size.height * 0.24, 0, size.height * 0.37,
        0, size.height / 2);
    path.cubicTo(0, size.height * 0.63, size.width * 0.01, size.height * 0.76,
        size.width * 0.04, size.height * 0.85);
    path.cubicTo(size.width * 0.07, size.height * 0.95, size.width * 0.1,
        size.height, size.width * 0.14, size.height);
    path.cubicTo(size.width * 0.14, size.height, size.width * 0.92, size.height,
        size.width * 0.92, size.height);
    path.cubicTo(size.width * 0.92, size.height, size.width * 0.92, size.height,
        size.width * 0.92, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

import 'package:flutter/material.dart';

import 'dart:math';

class Clock extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final r = min(size.height, size.width);
    final p = Paint();
    canvas.drawCircle(const Offset(0, 0), r, p);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
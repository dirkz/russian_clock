import 'package:flutter/material.dart';

import 'dart:math';

class Clock extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final r = min(size.height, size.width);
    final p = Paint();
    final center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, r, p);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
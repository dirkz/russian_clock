import 'dart:math';

import 'package:flutter/material.dart';

import 'time.dart';

class Clock extends CustomPainter {
  final HourMinute time;

  Clock({required this.time});
  
  @override
  void paint(Canvas canvas, Size size) {
    final p = Paint();
    p.style = PaintingStyle.stroke;
    p.strokeWidth = 2;

    final r = min(size.height, size.width)/2 - p.strokeWidth;
    final center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, r, p);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
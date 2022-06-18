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

    final r = min(size.height, size.width) / 2 - p.strokeWidth;
    final center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, r, p);

    const hourLineLength = 10;
    const hourRadSpacing = 2 * pi / 12;
    for (double rad = 0; rad < 2 * pi; rad = rad + hourRadSpacing) {
      final pOuter = pointOnCircle(
          radius: r, radians: rad, xOffset: center.dx, yOffset: center.dy);
      final pInner = pointOnCircle(
          radius: r - hourLineLength,
          radians: rad,
          xOffset: center.dx,
          yOffset: center.dy);
      canvas.drawLine(pOuter, pInner, p);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  pointOnCircle(
      {required double radius,
      required double radians,
      required double xOffset,
      required double yOffset}) {
    return Offset(
        radius * cos(radians) + xOffset, radius * sin(radians) + yOffset);
  }
}

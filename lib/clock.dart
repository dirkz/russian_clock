import 'dart:math';

import 'package:flutter/material.dart';

import 'time.dart';

class Clock extends CustomPainter {
  final HourMinute time;

  Clock({required this.time});

  @override
  void paint(Canvas canvas, Size size) {
    final pCircle = Paint();
    pCircle.style = PaintingStyle.stroke;
    pCircle.strokeWidth = 4;

    final r = min(size.height, size.width) / 2 - pCircle.strokeWidth;
    final center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, r, pCircle);

    final pHourMark = Paint();
    pHourMark.style = PaintingStyle.fill;
    pHourMark.strokeWidth = 4;

    const hourLineLength = 20;
    const hourRadSpacing = 2 * pi / 12;
    for (double rad = 0; rad < 2 * pi; rad = rad + hourRadSpacing) {
      final offsetOuter = pointOnCircle(
          radius: r, radians: rad, xOffset: center.dx, yOffset: center.dy);
      final offsetInner = pointOnCircle(
          radius: r - hourLineLength,
          radians: rad,
          xOffset: center.dx,
          yOffset: center.dy);
      canvas.drawLine(offsetOuter, offsetInner, pHourMark);
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

import 'dart:math';

import 'package:flutter/material.dart';

import 'time.dart';

class Clock extends CustomPainter {
  final HourMinute time;

  Clock({required this.time});

  @override
  void paint(Canvas canvas, Size size) {
    final paintCircle = Paint();
    paintCircle.style = PaintingStyle.stroke;
    paintCircle.strokeWidth = 4;

    final r = min(size.height, size.width) / 2 - paintCircle.strokeWidth;
    final center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, r, paintCircle);

    final paintMark = Paint();
    paintMark.style = PaintingStyle.fill;
    paintMark.strokeWidth = 4;

    _drawMarks(
        paint: paintMark,
        center: center,
        canvas: canvas,
        lineLingth: 20,
        radius: r,
        radSpacing: 2 * pi / 12);

    paintMark.strokeWidth = 2;

    _drawMarks(
        paint: paintMark,
        center: center,
        canvas: canvas,
        lineLingth: 10,
        radius: r,
        radSpacing: 2 * pi / 60);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  _drawMarks(
      {required Paint paint,
      required Offset center,
      required Canvas canvas,
      required double lineLingth,
      required double radius,
      required double radSpacing}) {
    for (double rad = 0; rad < 2 * pi; rad = rad + radSpacing) {
      final offsetOuter = _offsetOnCircle(
          radius: radius, radians: rad, xOffset: center.dx, yOffset: center.dy);
      final offsetInner = _offsetOnCircle(
          radius: radius - lineLingth,
          radians: rad,
          xOffset: center.dx,
          yOffset: center.dy);
      canvas.drawLine(offsetOuter, offsetInner, paint);
    }
  }

  _offsetOnCircle(
      {required double radius,
      required double radians,
      required double xOffset,
      required double yOffset}) {
    return Offset(
        radius * cos(radians) + xOffset, radius * sin(radians) + yOffset);
  }
}

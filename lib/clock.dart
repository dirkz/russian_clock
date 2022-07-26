import 'dart:math';

import 'package:flutter/material.dart';

import 'time.dart';

class Clock extends CustomPainter {
  final HourMinute time;

  Clock({required this.time});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(size.width / 2, size.height / 2);
    canvas.scale(1, -1);

    final paintCircle = Paint();
    paintCircle.style = PaintingStyle.stroke;
    paintCircle.strokeWidth = 4;

    final clockRadius =
        min(size.height, size.width) / 2 - paintCircle.strokeWidth;
    const minuteMarkLength = 8.0;
    const hourMarkLength = minuteMarkLength * 2;
    final minuteHandLength = clockRadius - minuteMarkLength - 15;
    final hourHandLength = minuteHandLength * 3 / 4;

    const center = Offset(0, 0);
    canvas.drawCircle(center, clockRadius, paintCircle);

    final paintMark = Paint();
    paintMark.style = PaintingStyle.fill;
    paintMark.strokeWidth = 4;

    _drawMarks(
        paint: paintMark,
        center: center,
        canvas: canvas,
        lineLingth: hourMarkLength,
        radius: clockRadius,
        radSpacing: 2 * pi / 12);

    paintMark.strokeWidth = 2;

    _drawMarks(
        paint: paintMark,
        center: center,
        canvas: canvas,
        lineLingth: minuteMarkLength,
        radius: clockRadius,
        radSpacing: 2 * pi / 60);

    const centerRadius = 5.0;
    paintCircle.strokeWidth = 1;
    canvas.drawCircle(center, centerRadius, paintCircle);

    final paintHand = Paint();
    paintHand.style = PaintingStyle.fill;
    paintHand.strokeWidth = 6;

    const radPerHour = 2 * pi / 12;
    final hourRad =
        time.hour % 12 * radPerHour + radPerHour * (time.minute / 60);
    final offsetHourOuter = _offsetOnCircle(
        radius: hourHandLength, radians: hourRad, center: center);
    final offsetHourInner =
        _offsetOnCircle(radius: centerRadius, radians: hourRad, center: center);
    canvas.drawLine(offsetHourOuter, offsetHourInner, paintHand);

    paintHand.strokeWidth = 4;

    final minuteRad = time.minute * 2 * pi / 60;
    final offsetMinuteOuter = _offsetOnCircle(
        radius: minuteHandLength, radians: minuteRad, center: center);
    final offsetMinuteInner = _offsetOnCircle(
        radius: centerRadius, radians: minuteRad, center: center);
    canvas.drawLine(offsetMinuteOuter, offsetMinuteInner, paintHand);
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
      final offsetOuter =
          _offsetOnCircle(radius: radius, radians: rad, center: center);
      final offsetInner = _offsetOnCircle(
          radius: radius - lineLingth, radians: rad, center: center);
      canvas.drawLine(offsetOuter, offsetInner, paint);
    }
  }

  /// Point on a circle.
  _offsetOnCircle({
    required Offset center,
    required double radius,
    required double radians,
  }) {
    final rad = -(radians - 2 * pi / 4);
    return Offset(center.dx + radius * cos(rad), center.dy + radius * sin(rad));
  }
}

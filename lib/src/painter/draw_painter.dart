import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screen/drawing_screen.dart';

class DrawPainter extends CustomPainter {
  List<DrawingParameter> points = [];

  DrawPainter({this.points});

  Paint paintOfDraw(Color color, double strokeWidth) {
    Paint drawPant = Paint()
      ..isAntiAlias = true
      ..strokeCap = StrokeCap.round
      ..color = color
      ..strokeWidth = strokeWidth;
    return drawPant;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPant = Paint()..color = Colors.white;
    canvas.drawRect(
        Rect.fromLTWH(0, 0, size.width, size.height), backgroundPant);
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i].offset, points[i + 1].offset,
            paintOfDraw(points[i]?.color, points[i].strokeWidth));
      } else if (points[i] != null && points[i + 1] == null) {
        canvas.drawPoints(PointMode.points, [points[i].offset],
            paintOfDraw(points[i]?.color, points[i].strokeWidth));
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class PandaCustomPainter extends CustomPainter {
  @override
  bool hitTest(Offset position) {
    print("${position.dx} - ${position.dy}");
    return super.hitTest(position);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 45, 103, 13)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.12, size.height * 0.55);
    path_0.quadraticBezierTo(size.width * 0.14, size.height * 0.63,
        size.width * 0.15, size.height * 0.64);
    path_0.cubicTo(size.width * 0.16, size.height * 0.64, size.width * 0.15,
        size.height * 0.65, size.width * 0.17, size.height * 0.65);
    path_0.cubicTo(size.width * 0.21, size.height * 0.65, size.width * 0.23,
        size.height * 0.65, size.width * 0.29, size.height * 0.65);
    path_0.cubicTo(size.width * 0.26, size.height * 0.63, size.width * 0.27,
        size.height * 0.62, size.width * 0.26, size.height * 0.60);
    path_0.cubicTo(size.width * 0.26, size.height * 0.59, size.width * 0.26,
        size.height * 0.57, size.width * 0.26, size.height * 0.56);
    path_0.cubicTo(size.width * 0.21, size.height * 0.56, size.width * 0.18,
        size.height * 0.56, size.width * 0.16, size.height * 0.55);
    path_0.cubicTo(size.width * 0.16, size.height * 0.54, size.width * 0.16,
        size.height * 0.54, size.width * 0.16, size.height * 0.54);
    path_0.cubicTo(size.width * 0.20, size.height * 0.53, size.width * 0.21,
        size.height * 0.51, size.width * 0.21, size.height * 0.50);
    path_0.cubicTo(size.width * 0.19, size.height * 0.50, size.width * 0.19,
        size.height * 0.50, size.width * 0.18, size.height * 0.50);
    path_0.quadraticBezierTo(size.width * 0.19, size.height * 0.48,
        size.width * 0.20, size.height * 0.46);
    path_0.quadraticBezierTo(size.width * 0.18, size.height * 0.47,
        size.width * 0.16, size.height * 0.48);
    path_0.cubicTo(size.width * 0.16, size.height * 0.47, size.width * 0.15,
        size.height * 0.47, size.width * 0.15, size.height * 0.46);
    path_0.cubicTo(size.width * 0.14, size.height * 0.51, size.width * 0.14,
        size.height * 0.52, size.width * 0.15, size.height * 0.53);
    path_0.cubicTo(size.width * 0.15, size.height * 0.54, size.width * 0.15,
        size.height * 0.55, size.width * 0.15, size.height * 0.55);
    path_0.quadraticBezierTo(size.width * 0.14, size.height * 0.55,
        size.width * 0.12, size.height * 0.55);
    path_0.close();

    canvas.drawPath(path_0, paint_0);

    Paint paint_1 = new Paint()
      ..color = Color.fromARGB(255, 47, 172, 94)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.15, size.height * 0.48);
    path_1.quadraticBezierTo(size.width * 0.15, size.height * 0.51,
        size.width * 0.16, size.height * 0.53);
    path_1.quadraticBezierTo(size.width * 0.18, size.height * 0.53,
        size.width * 0.20, size.height * 0.51);
    path_1.quadraticBezierTo(size.width * 0.18, size.height * 0.51,
        size.width * 0.17, size.height * 0.51);
    path_1.cubicTo(size.width * 0.17, size.height * 0.50, size.width * 0.18,
        size.height * 0.49, size.width * 0.18, size.height * 0.48);
    path_1.cubicTo(size.width * 0.17, size.height * 0.49, size.width * 0.17,
        size.height * 0.50, size.width * 0.16, size.height * 0.50);
    path_1.quadraticBezierTo(size.width * 0.16, size.height * 0.49,
        size.width * 0.15, size.height * 0.48);
    path_1.close();

    canvas.drawPath(path_1, paint_1);

    Paint paint_2 = new Paint()
      ..color = Color.fromARGB(255, 42, 142, 69)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.13, size.height * 0.56);
    path_2.quadraticBezierTo(size.width * 0.16, size.height * 0.56,
        size.width * 0.20, size.height * 0.57);
    path_2.cubicTo(size.width * 0.18, size.height * 0.59, size.width * 0.19,
        size.height * 0.63, size.width * 0.20, size.height * 0.64);
    path_2.cubicTo(size.width * 0.18, size.height * 0.64, size.width * 0.17,
        size.height * 0.64, size.width * 0.16, size.height * 0.64);
    path_2.quadraticBezierTo(size.width * 0.15, size.height * 0.62,
        size.width * 0.13, size.height * 0.56);
    path_2.close();

    canvas.drawPath(path_2, paint_2);

    Paint paint_3 = new Paint()
      ..color = Color.fromARGB(255, 38, 132, 58)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.26, size.height * 0.56);
    path_3.quadraticBezierTo(size.width * 0.23, size.height * 0.57,
        size.width * 0.22, size.height * 0.57);
    path_3.cubicTo(size.width * 0.21, size.height * 0.59, size.width * 0.22,
        size.height * 0.64, size.width * 0.22, size.height * 0.64);
    path_3.quadraticBezierTo(size.width * 0.26, size.height * 0.64,
        size.width * 0.28, size.height * 0.64);

    canvas.drawPath(path_3, paint_3);

    Paint paint_4 = new Paint()
      ..color = Color.fromARGB(255, 37, 128, 58)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.20, size.height * 0.56);
    path_4.quadraticBezierTo(size.width * 0.21, size.height * 0.56,
        size.width * 0.21, size.height * 0.57);
    path_4.cubicTo(size.width * 0.21, size.height * 0.58, size.width * 0.20,
        size.height * 0.62, size.width * 0.21, size.height * 0.64);
    path_4.cubicTo(size.width * 0.21, size.height * 0.64, size.width * 0.21,
        size.height * 0.64, size.width * 0.21, size.height * 0.64);
    path_4.quadraticBezierTo(size.width * 0.19, size.height * 0.61,
        size.width * 0.20, size.height * 0.56);
    path_4.close();

    canvas.drawPath(path_4, paint_4);

    Paint paint_5 = new Paint()
      ..color = Color.fromARGB(255, 34, 105, 45)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.72, size.height * 0.65);
    path_5.quadraticBezierTo(size.width * 0.73, size.height * 0.67,
        size.width * 0.74, size.height * 0.67);
    path_5.cubicTo(size.width * 0.72, size.height * 0.70, size.width * 0.74,
        size.height * 0.74, size.width * 0.75, size.height * 0.75);
    path_5.quadraticBezierTo(size.width * 0.76, size.height * 0.74,
        size.width * 0.76, size.height * 0.71);
    path_5.quadraticBezierTo(size.width * 0.79, size.height * 0.74,
        size.width * 0.81, size.height * 0.74);
    path_5.quadraticBezierTo(size.width * 0.81, size.height * 0.73,
        size.width * 0.79, size.height * 0.70);
    path_5.quadraticBezierTo(size.width * 0.82, size.height * 0.70,
        size.width * 0.83, size.height * 0.69);
    path_5.cubicTo(size.width * 0.82, size.height * 0.68, size.width * 0.78,
        size.height * 0.65, size.width * 0.74, size.height * 0.66);
    path_5.quadraticBezierTo(size.width * 0.74, size.height * 0.66,
        size.width * 0.73, size.height * 0.65);

    canvas.drawPath(path_5, paint_5);

    Paint paint_6 = new Paint()
      ..color = Color.fromARGB(255, 23, 97, 37)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.52, size.height * 0.56);
    path_6.quadraticBezierTo(size.width * 0.78, size.height * 0.57,
        size.width * 0.87, size.height * 0.57);
    path_6.cubicTo(size.width * 0.85, size.height * 0.63, size.width * 0.85,
        size.height * 0.63, size.width * 0.85, size.height * 0.64);
    path_6.cubicTo(size.width * 0.76, size.height * 0.65, size.width * 0.58,
        size.height * 0.65, size.width * 0.48, size.height * 0.65);
    path_6.cubicTo(size.width * 0.49, size.height * 0.65, size.width * 0.49,
        size.height * 0.64, size.width * 0.49, size.height * 0.64);
    path_6.quadraticBezierTo(size.width * 0.52, size.height * 0.58,
        size.width * 0.52, size.height * 0.56);
    path_6.close();

    canvas.drawPath(path_6, paint_6);

    Paint paint_7 = new Paint()
      ..color = Color.fromARGB(255, 36, 145, 57)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.52, size.height * 0.57);
    path_7.quadraticBezierTo(size.width * 0.58, size.height * 0.58,
        size.width * 0.60, size.height * 0.58);
    path_7.cubicTo(size.width * 0.58, size.height * 0.59, size.width * 0.59,
        size.height * 0.63, size.width * 0.60, size.height * 0.64);
    path_7.quadraticBezierTo(size.width * 0.53, size.height * 0.64,
        size.width * 0.49, size.height * 0.64);
    path_7.lineTo(size.width * 0.52, size.height * 0.57);
    path_7.close();

    canvas.drawPath(path_7, paint_7);

    Paint paint_8 = new Paint()
      ..color = Color.fromARGB(255, 34, 134, 62)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.61, size.height * 0.58);
    path_8.lineTo(size.width * 0.61, size.height * 0.58);
    path_8.quadraticBezierTo(size.width * 0.60, size.height * 0.61,
        size.width * 0.62, size.height * 0.64);
    path_8.cubicTo(size.width * 0.61, size.height * 0.64, size.width * 0.61,
        size.height * 0.64, size.width * 0.61, size.height * 0.64);
    path_8.quadraticBezierTo(size.width * 0.59, size.height * 0.60,
        size.width * 0.61, size.height * 0.58);
    path_8.close();

    canvas.drawPath(path_8, paint_8);

    Paint paint_9 = new Paint()
      ..color = Color.fromARGB(255, 32, 129, 61)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.62, size.height * 0.58);
    path_9.lineTo(size.width * 0.77, size.height * 0.58);
    path_9.quadraticBezierTo(size.width * 0.76, size.height * 0.62,
        size.width * 0.77, size.height * 0.64);
    path_9.cubicTo(size.width * 0.74, size.height * 0.64, size.width * 0.66,
        size.height * 0.64, size.width * 0.62, size.height * 0.64);
    path_9.quadraticBezierTo(size.width * 0.61, size.height * 0.61,
        size.width * 0.62, size.height * 0.58);
    path_9.close();

    canvas.drawPath(path_9, paint_9);

    Paint paint_10 = new Paint()
      ..color = Color.fromARGB(255, 34, 148, 63)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.78, size.height * 0.58);
    path_10.lineTo(size.width * 0.79, size.height * 0.58);
    path_10.quadraticBezierTo(size.width * 0.77, size.height * 0.61,
        size.width * 0.79, size.height * 0.64);
    path_10.cubicTo(size.width * 0.78, size.height * 0.64, size.width * 0.78,
        size.height * 0.64, size.width * 0.78, size.height * 0.64);
    path_10.quadraticBezierTo(size.width * 0.77, size.height * 0.60,
        size.width * 0.78, size.height * 0.58);
    path_10.close();

    canvas.drawPath(path_10, paint_10);

    Paint paint_11 = new Paint()
      ..color = Color.fromARGB(255, 31, 135, 34)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.80, size.height * 0.58);
    path_11.quadraticBezierTo(size.width * 0.84, size.height * 0.58,
        size.width * 0.86, size.height * 0.58);
    path_11.cubicTo(size.width * 0.86, size.height * 0.59, size.width * 0.85,
        size.height * 0.61, size.width * 0.84, size.height * 0.63);
    path_11.cubicTo(size.width * 0.83, size.height * 0.64, size.width * 0.81,
        size.height * 0.64, size.width * 0.80, size.height * 0.64);
    path_11.quadraticBezierTo(size.width * 0.79, size.height * 0.62,
        size.width * 0.80, size.height * 0.58);
    path_11.close();

    canvas.drawPath(path_11, paint_11);

    Paint paint_12 = new Paint()
      ..color = Color.fromARGB(255, 39, 136, 51)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.75, size.height * 0.67);
    path_12.quadraticBezierTo(size.width * 0.73, size.height * 0.69,
        size.width * 0.75, size.height * 0.73);
    path_12.quadraticBezierTo(size.width * 0.75, size.height * 0.72,
        size.width * 0.76, size.height * 0.70);
    path_12.quadraticBezierTo(size.width * 0.78, size.height * 0.72,
        size.width * 0.80, size.height * 0.73);
    path_12.quadraticBezierTo(size.width * 0.79, size.height * 0.71,
        size.width * 0.78, size.height * 0.69);
    path_12.quadraticBezierTo(size.width * 0.80, size.height * 0.69,
        size.width * 0.81, size.height * 0.69);
    path_12.quadraticBezierTo(size.width * 0.77, size.height * 0.66,
        size.width * 0.75, size.height * 0.67);
    path_12.close();

    canvas.drawPath(path_12, paint_12);

    Paint paint_13 = new Paint()
      ..color = Color.fromARGB(255, 20, 31, 40)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.50, size.height * 0.65);
    path_13.quadraticBezierTo(size.width * 0.52, size.height * 0.72,
        size.width * 0.55, size.height * 0.71);
    path_13.cubicTo(size.width * 0.56, size.height * 0.72, size.width * 0.59,
        size.height * 0.72, size.width * 0.60, size.height * 0.65);
    path_13.quadraticBezierTo(size.width * 0.50, size.height * 0.65,
        size.width * 0.50, size.height * 0.65);
    path_13.close();

    canvas.drawPath(path_13, paint_13);

    Paint paint_14 = new Paint()
      ..color = Color.fromARGB(255, 79, 104, 125)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.51, size.height * 0.65);
    path_14.quadraticBezierTo(size.width * 0.51, size.height * 0.65,
        size.width * 0.59, size.height * 0.65);
    path_14.cubicTo(size.width * 0.58, size.height * 0.70, size.width * 0.56,
        size.height * 0.71, size.width * 0.55, size.height * 0.71);
    path_14.quadraticBezierTo(size.width * 0.52, size.height * 0.70,
        size.width * 0.51, size.height * 0.65);
    path_14.close();

    canvas.drawPath(path_14, paint_14);

    Paint paint_15 = new Paint()
      ..color = Color.fromARGB(255, 216, 224, 230)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.53, size.height * 0.67);
    path_15.quadraticBezierTo(size.width * 0.54, size.height * 0.67,
        size.width * 0.54, size.height * 0.67);
    path_15.cubicTo(size.width * 0.54, size.height * 0.68, size.width * 0.53,
        size.height * 0.68, size.width * 0.53, size.height * 0.68);
    path_15.cubicTo(size.width * 0.52, size.height * 0.68, size.width * 0.53,
        size.height * 0.68, size.width * 0.52, size.height * 0.67);
    path_15.quadraticBezierTo(size.width * 0.52, size.height * 0.67,
        size.width * 0.53, size.height * 0.67);
    path_15.close();

    canvas.drawPath(path_15, paint_15);

    Paint paint_16 = new Paint()
      ..color = Color.fromARGB(255, 214, 216, 218)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.57, size.height * 0.67);
    path_16.quadraticBezierTo(size.width * 0.57, size.height * 0.67,
        size.width * 0.58, size.height * 0.67);
    path_16.cubicTo(size.width * 0.58, size.height * 0.68, size.width * 0.58,
        size.height * 0.68, size.width * 0.57, size.height * 0.68);
    path_16.cubicTo(size.width * 0.57, size.height * 0.68, size.width * 0.56,
        size.height * 0.68, size.width * 0.56, size.height * 0.67);
    path_16.quadraticBezierTo(size.width * 0.56, size.height * 0.67,
        size.width * 0.57, size.height * 0.67);
    path_16.close();

    canvas.drawPath(path_16, paint_16);

    Paint paint_17 = new Paint()
      ..color = Color.fromARGB(255, 216, 217, 218)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.55, size.height * 0.68);
    path_17.quadraticBezierTo(size.width * 0.56, size.height * 0.68,
        size.width * 0.56, size.height * 0.69);
    path_17.cubicTo(size.width * 0.56, size.height * 0.69, size.width * 0.55,
        size.height * 0.69, size.width * 0.55, size.height * 0.69);
    path_17.cubicTo(size.width * 0.54, size.height * 0.69, size.width * 0.54,
        size.height * 0.69, size.width * 0.54, size.height * 0.68);
    path_17.quadraticBezierTo(size.width * 0.54, size.height * 0.68,
        size.width * 0.55, size.height * 0.68);
    path_17.close();

    canvas.drawPath(path_17, paint_17);

    Paint paint_18 = new Paint()
      ..color = Color.fromARGB(255, 15, 23, 29)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.51, size.height * 0.35);
    path_18.quadraticBezierTo(size.width * 0.47, size.height * 0.34,
        size.width * 0.37, size.height * 0.35);
    path_18.cubicTo(size.width * 0.37, size.height * 0.33, size.width * 0.35,
        size.height * 0.32, size.width * 0.33, size.height * 0.33);
    path_18.quadraticBezierTo(size.width * 0.30, size.height * 0.35,
        size.width * 0.33, size.height * 0.37);
    path_18.quadraticBezierTo(size.width * 0.25, size.height * 0.42,
        size.width * 0.27, size.height * 0.51);
    path_18.cubicTo(size.width * 0.23, size.height * 0.62, size.width * 0.28,
        size.height * 0.66, size.width * 0.35, size.height * 0.67);
    path_18.quadraticBezierTo(size.width * 0.38, size.height * 0.68,
        size.width * 0.39, size.height * 0.65);
    path_18.quadraticBezierTo(size.width * 0.40, size.height * 0.68,
        size.width * 0.43, size.height * 0.68);
    path_18.cubicTo(size.width * 0.50, size.height * 0.67, size.width * 0.51,
        size.height * 0.59, size.width * 0.52, size.height * 0.56);
    path_18.quadraticBezierTo(size.width * 0.53, size.height * 0.57,
        size.width * 0.57, size.height * 0.57);
    path_18.lineTo(size.width * 0.51, size.height * 0.35);
    path_18.close();

    canvas.drawPath(path_18, paint_18);

    Paint paint_19 = new Paint()
      ..color = Color.fromARGB(255, 240, 242, 244)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.46, size.height * 0.36);
    path_19.quadraticBezierTo(size.width * 0.27, size.height * 0.35,
        size.width * 0.27, size.height * 0.50);
    path_19.cubicTo(size.width * 0.34, size.height * 0.51, size.width * 0.37,
        size.height * 0.53, size.width * 0.40, size.height * 0.55);
    path_19.quadraticBezierTo(size.width * 0.41, size.height * 0.51,
        size.width * 0.46, size.height * 0.36);
    path_19.close();

    canvas.drawPath(path_19, paint_19);

    Paint paint_20 = new Paint()
      ..color = Color.fromARGB(255, 225, 232, 238)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.39, size.height * 0.57);
    path_20.quadraticBezierTo(size.width * 0.37, size.height * 0.52,
        size.width * 0.27, size.height * 0.51);
    path_20.quadraticBezierTo(size.width * 0.26, size.height * 0.57,
        size.width * 0.27, size.height * 0.61);
    path_20.quadraticBezierTo(size.width * 0.27, size.height * 0.55,
        size.width * 0.28, size.height * 0.53);
    path_20.quadraticBezierTo(size.width * 0.34, size.height * 0.52,
        size.width * 0.39, size.height * 0.57);
    path_20.close();

    canvas.drawPath(path_20, paint_20);

    Paint paint_21 = new Paint()
      ..color = Color.fromARGB(255, 236, 239, 241)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.28, size.height * 0.58);
    path_21.quadraticBezierTo(size.width * 0.30, size.height * 0.56,
        size.width * 0.35, size.height * 0.59);
    path_21.cubicTo(size.width * 0.39, size.height * 0.62, size.width * 0.38,
        size.height * 0.65, size.width * 0.37, size.height * 0.65);
    path_21.cubicTo(size.width * 0.34, size.height * 0.67, size.width * 0.31,
        size.height * 0.65, size.width * 0.29, size.height * 0.64);
    path_21.quadraticBezierTo(size.width * 0.26, size.height * 0.61,
        size.width * 0.28, size.height * 0.58);
    path_21.close();

    canvas.drawPath(path_21, paint_21);

    Paint paint_22 = new Paint()
      ..color = Color.fromARGB(255, 232, 237, 240)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.44, size.height * 0.46);
    path_22.quadraticBezierTo(size.width * 0.41, size.height * 0.53,
        size.width * 0.40, size.height * 0.56);
    path_22.cubicTo(size.width * 0.40, size.height * 0.58, size.width * 0.40,
        size.height * 0.62, size.width * 0.40, size.height * 0.63);
    path_22.quadraticBezierTo(size.width * 0.40, size.height * 0.58,
        size.width * 0.44, size.height * 0.46);
    path_22.close();

    canvas.drawPath(path_22, paint_22);

    Paint paint_23 = new Paint()
      ..color = Color.fromARGB(255, 252, 252, 252)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.46, size.height * 0.36);
    path_23.quadraticBezierTo(size.width * 0.44, size.height * 0.41,
        size.width * 0.43, size.height * 0.46);
    path_23.cubicTo(size.width * 0.41, size.height * 0.47, size.width * 0.36,
        size.height * 0.48, size.width * 0.32, size.height * 0.48);
    path_23.cubicTo(size.width * 0.31, size.height * 0.47, size.width * 0.28,
        size.height * 0.47, size.width * 0.29, size.height * 0.42);
    path_23.quadraticBezierTo(size.width * 0.32, size.height * 0.35,
        size.width * 0.46, size.height * 0.36);
    path_23.close();

    canvas.drawPath(path_23, paint_23);

    Paint paint_24 = new Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.28, size.height * 0.57);
    path_24.quadraticBezierTo(size.width * 0.35, size.height * 0.56,
        size.width * 0.38, size.height * 0.63);
    path_24.cubicTo(size.width * 0.35, size.height * 0.65, size.width * 0.29,
        size.height * 0.62, size.width * 0.27, size.height * 0.60);
    path_24.quadraticBezierTo(size.width * 0.27, size.height * 0.59,
        size.width * 0.28, size.height * 0.57);
    path_24.close();

    canvas.drawPath(path_24, paint_24);

    Paint paint_25 = new Paint()
      ..color = Color.fromARGB(255, 18, 28, 35)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.58, size.height * 0.32);
    path_25.quadraticBezierTo(size.width * 0.49, size.height * 0.35,
        size.width * 0.47, size.height * 0.41);
    path_25.quadraticBezierTo(size.width * 0.47, size.height * 0.52,
        size.width * 0.54, size.height * 0.56);
    path_25.quadraticBezierTo(size.width * 0.69, size.height * 0.57,
        size.width * 0.74, size.height * 0.57);
    path_25.quadraticBezierTo(size.width * 0.77, size.height * 0.57,
        size.width * 0.76, size.height * 0.55);
    path_25.quadraticBezierTo(size.width * 0.82, size.height * 0.57,
        size.width * 0.84, size.height * 0.51);
    path_25.cubicTo(size.width * 0.85, size.height * 0.45, size.width * 0.80,
        size.height * 0.45, size.width * 0.79, size.height * 0.45);
    path_25.quadraticBezierTo(size.width * 0.79, size.height * 0.35,
        size.width * 0.69, size.height * 0.31);
    path_25.quadraticBezierTo(size.width * 0.69, size.height * 0.25,
        size.width * 0.63, size.height * 0.25);
    path_25.quadraticBezierTo(size.width * 0.58, size.height * 0.26,
        size.width * 0.58, size.height * 0.32);
    path_25.close();

    canvas.drawPath(path_25, paint_25);

    Paint paint_26 = new Paint()
      ..color = Color.fromARGB(255, 206, 218, 229)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_26 = Path();
    path_26.moveTo(size.width * 0.63, size.height * 0.32);
    path_26.quadraticBezierTo(size.width * 0.51, size.height * 0.34,
        size.width * 0.48, size.height * 0.41);
    path_26.cubicTo(size.width * 0.47, size.height * 0.51, size.width * 0.54,
        size.height * 0.56, size.width * 0.55, size.height * 0.56);
    path_26.quadraticBezierTo(size.width * 0.56, size.height * 0.55,
        size.width * 0.57, size.height * 0.55);
    path_26.quadraticBezierTo(size.width * 0.56, size.height * 0.56,
        size.width * 0.57, size.height * 0.56);
    path_26.cubicTo(size.width * 0.61, size.height * 0.57, size.width * 0.75,
        size.height * 0.57, size.width * 0.75, size.height * 0.56);
    path_26.cubicTo(size.width * 0.76, size.height * 0.55, size.width * 0.75,
        size.height * 0.54, size.width * 0.75, size.height * 0.53);
    path_26.cubicTo(size.width * 0.75, size.height * 0.50, size.width * 0.79,
        size.height * 0.45, size.width * 0.77, size.height * 0.41);
    path_26.quadraticBezierTo(size.width * 0.74, size.height * 0.32,
        size.width * 0.63, size.height * 0.32);
    path_26.close();

    canvas.drawPath(path_26, paint_26);

    Paint paint_27 = new Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_27 = Path();
    path_27.moveTo(size.width * 0.63, size.height * 0.32);
    path_27.quadraticBezierTo(size.width * 0.51, size.height * 0.34,
        size.width * 0.49, size.height * 0.40);
    path_27.quadraticBezierTo(size.width * 0.47, size.height * 0.47,
        size.width * 0.54, size.height * 0.52);
    path_27.quadraticBezierTo(size.width * 0.57, size.height * 0.53,
        size.width * 0.60, size.height * 0.51);
    path_27.quadraticBezierTo(size.width * 0.59, size.height * 0.54,
        size.width * 0.62, size.height * 0.54);
    path_27.lineTo(size.width * 0.67, size.height * 0.53);
    path_27.lineTo(size.width * 0.73, size.height * 0.47);
    path_27.quadraticBezierTo(size.width * 0.81, size.height * 0.45,
        size.width * 0.75, size.height * 0.36);
    path_27.quadraticBezierTo(size.width * 0.72, size.height * 0.32,
        size.width * 0.63, size.height * 0.32);
    path_27.close();

    canvas.drawPath(path_27, paint_27);

    Paint paint_28 = new Paint()
      ..color = Color.fromARGB(255, 6, 6, 7)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_28 = Path();
    path_28.moveTo(size.width * 0.59, size.height * 0.42);
    path_28.quadraticBezierTo(size.width * 0.65, size.height * 0.42,
        size.width * 0.64, size.height * 0.39);
    path_28.quadraticBezierTo(size.width * 0.64, size.height * 0.36,
        size.width * 0.58, size.height * 0.37);
    path_28.quadraticBezierTo(size.width * 0.54, size.height * 0.38,
        size.width * 0.55, size.height * 0.42);
    path_28.cubicTo(size.width * 0.55, size.height * 0.43, size.width * 0.56,
        size.height * 0.43, size.width * 0.57, size.height * 0.43);
    path_28.quadraticBezierTo(size.width * 0.58, size.height * 0.43,
        size.width * 0.59, size.height * 0.42);
    path_28.close();

    canvas.drawPath(path_28, paint_28);

    Paint paint_29 = new Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_29 = Path();
    path_29.moveTo(size.width * 0.60, size.height * 0.38);
    path_29.quadraticBezierTo(size.width * 0.60, size.height * 0.40,
        size.width * 0.61, size.height * 0.41);
    path_29.cubicTo(size.width * 0.61, size.height * 0.41, size.width * 0.60,
        size.height * 0.41, size.width * 0.60, size.height * 0.40);
    path_29.quadraticBezierTo(size.width * 0.59, size.height * 0.39,
        size.width * 0.60, size.height * 0.38);
    path_29.close();

    canvas.drawPath(path_29, paint_29);

    Paint paint_30 = new Paint()
      ..color = Color.fromARGB(255, 8, 9, 10)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_30 = Path();
    path_30.moveTo(size.width * 0.71, size.height * 0.45);
    path_30.quadraticBezierTo(size.width * 0.68, size.height * 0.45,
        size.width * 0.68, size.height * 0.48);
    path_30.cubicTo(size.width * 0.66, size.height * 0.52, size.width * 0.67,
        size.height * 0.54, size.width * 0.68, size.height * 0.54);
    path_30.cubicTo(size.width * 0.71, size.height * 0.55, size.width * 0.72,
        size.height * 0.53, size.width * 0.73, size.height * 0.52);
    path_30.quadraticBezierTo(size.width * 0.75, size.height * 0.45,
        size.width * 0.71, size.height * 0.45);
    path_30.close();

    canvas.drawPath(path_30, paint_30);

    Paint paint_31 = new Paint()
      ..color = Color.fromARGB(255, 253, 253, 253)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_31 = Path();
    path_31.moveTo(size.width * 0.70, size.height * 0.50);
    path_31.quadraticBezierTo(size.width * 0.70, size.height * 0.51,
        size.width * 0.72, size.height * 0.51);
    path_31.cubicTo(size.width * 0.71, size.height * 0.51, size.width * 0.71,
        size.height * 0.51, size.width * 0.70, size.height * 0.51);
    path_31.quadraticBezierTo(size.width * 0.69, size.height * 0.51,
        size.width * 0.70, size.height * 0.50);
    path_31.close();

    canvas.drawPath(path_31, paint_31);

    Paint paint_32 = new Paint()
      ..color = Color.fromARGB(255, 33, 35, 35)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_32 = Path();
    path_32.moveTo(size.width * 0.63, size.height * 0.44);
    path_32.quadraticBezierTo(size.width * 0.65, size.height * 0.44,
        size.width * 0.65, size.height * 0.47);
    path_32.cubicTo(size.width * 0.64, size.height * 0.47, size.width * 0.63,
        size.height * 0.47, size.width * 0.62, size.height * 0.46);
    path_32.quadraticBezierTo(size.width * 0.62, size.height * 0.44,
        size.width * 0.63, size.height * 0.44);
    path_32.close();

    canvas.drawPath(path_32, paint_32);

    Paint paint_33 = new Paint()
      ..color = Color.fromARGB(255, 237, 240, 242)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_33 = Path();
    path_33.moveTo(size.width * 0.63, size.height * 0.45);
    path_33.quadraticBezierTo(size.width * 0.64, size.height * 0.45,
        size.width * 0.64, size.height * 0.45);
    path_33.cubicTo(size.width * 0.64, size.height * 0.45, size.width * 0.64,
        size.height * 0.46, size.width * 0.64, size.height * 0.46);
    path_33.cubicTo(size.width * 0.64, size.height * 0.46, size.width * 0.63,
        size.height * 0.46, size.width * 0.63, size.height * 0.45);
    path_33.quadraticBezierTo(size.width * 0.63, size.height * 0.45,
        size.width * 0.63, size.height * 0.45);
    path_33.close();

    canvas.drawPath(path_33, paint_33);

    Paint paint_34 = new Paint()
      ..color = Color.fromARGB(255, 203, 210, 217)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_34 = Path();
    path_34.moveTo(size.width * 0.59, size.height * 0.43);
    path_34.quadraticBezierTo(size.width * 0.59, size.height * 0.45,
        size.width * 0.60, size.height * 0.46);
    path_34.cubicTo(size.width * 0.60, size.height * 0.46, size.width * 0.61,
        size.height * 0.46, size.width * 0.62, size.height * 0.46);
    path_34.cubicTo(size.width * 0.62, size.height * 0.50, size.width * 0.66,
        size.height * 0.48, size.width * 0.67, size.height * 0.50);
    path_34.cubicTo(size.width * 0.66, size.height * 0.50, size.width * 0.62,
        size.height * 0.50, size.width * 0.60, size.height * 0.50);
    path_34.quadraticBezierTo(size.width * 0.58, size.height * 0.47,
        size.width * 0.59, size.height * 0.43);
    path_34.close();

    canvas.drawPath(path_34, paint_34);

    Paint paint_35 = new Paint()
      ..color = Color.fromARGB(255, 24, 31, 37)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_35 = Path();
    path_35.moveTo(size.width * 0.60, size.height * 0.43);
    path_35.quadraticBezierTo(size.width * 0.57, size.height * 0.45,
        size.width * 0.58, size.height * 0.47);
    path_35.quadraticBezierTo(size.width * 0.56, size.height * 0.52,
        size.width * 0.62, size.height * 0.50);
    path_35.quadraticBezierTo(size.width * 0.60, size.height * 0.52,
        size.width * 0.60, size.height * 0.52);
    path_35.cubicTo(size.width * 0.61, size.height * 0.51, size.width * 0.64,
        size.height * 0.50, size.width * 0.67, size.height * 0.50);
    path_35.cubicTo(size.width * 0.66, size.height * 0.49, size.width * 0.64,
        size.height * 0.49, size.width * 0.63, size.height * 0.49);
    path_35.cubicTo(size.width * 0.61, size.height * 0.49, size.width * 0.62,
        size.height * 0.48, size.width * 0.62, size.height * 0.47);
    path_35.cubicTo(size.width * 0.60, size.height * 0.47, size.width * 0.59,
        size.height * 0.46, size.width * 0.59, size.height * 0.46);
    path_35.quadraticBezierTo(size.width * 0.59, size.height * 0.45,
        size.width * 0.60, size.height * 0.43);
    path_35.close();

    canvas.drawPath(path_35, paint_35);

    Paint paint_36 = new Paint()
      ..color = Color.fromARGB(255, 249, 249, 249)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_36 = Path();
    path_36.moveTo(size.width * 0.63, size.height * 0.28);
    path_36.quadraticBezierTo(size.width * 0.60, size.height * 0.29,
        size.width * 0.61, size.height * 0.31);
    path_36.cubicTo(size.width * 0.62, size.height * 0.31, size.width * 0.65,
        size.height * 0.31, size.width * 0.66, size.height * 0.31);
    path_36.quadraticBezierTo(size.width * 0.66, size.height * 0.28,
        size.width * 0.63, size.height * 0.28);
    path_36.close();

    canvas.drawPath(path_36, paint_36);

    Paint paint_37 = new Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_37 = Path();
    path_37.moveTo(size.width * 0.78, size.height * 0.48);
    path_37.quadraticBezierTo(size.width * 0.81, size.height * 0.47,
        size.width * 0.81, size.height * 0.51);
    path_37.cubicTo(size.width * 0.81, size.height * 0.52, size.width * 0.80,
        size.height * 0.53, size.width * 0.79, size.height * 0.52);
    path_37.quadraticBezierTo(size.width * 0.77, size.height * 0.52,
        size.width * 0.76, size.height * 0.51);
    path_37.lineTo(size.width * 0.78, size.height * 0.48);
    path_37.close();

    canvas.drawPath(path_37, paint_37);

    Paint paint_38 = new Paint()
      ..color = Color.fromARGB(255, 204, 214, 222)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_38 = Path();
    path_38.moveTo(size.width * 0.60, size.height * 0.28);
    path_38.quadraticBezierTo(size.width * 0.61, size.height * 0.27,
        size.width * 0.62, size.height * 0.26);
    path_38.cubicTo(size.width * 0.62, size.height * 0.27, size.width * 0.65,
        size.height * 0.27, size.width * 0.65, size.height * 0.26);
    path_38.quadraticBezierTo(size.width * 0.65, size.height * 0.26,
        size.width * 0.67, size.height * 0.28);
    path_38.quadraticBezierTo(size.width * 0.66, size.height * 0.26,
        size.width * 0.63, size.height * 0.26);
    path_38.quadraticBezierTo(size.width * 0.61, size.height * 0.26,
        size.width * 0.60, size.height * 0.28);
    path_38.close();

    canvas.drawPath(path_38, paint_38);

    Paint paint_39 = new Paint()
      ..color = Color.fromARGB(255, 197, 204, 210)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_39 = Path();
    path_39.moveTo(size.width * 0.78, size.height * 0.47);
    path_39.quadraticBezierTo(size.width * 0.78, size.height * 0.46,
        size.width * 0.79, size.height * 0.46);
    path_39.cubicTo(size.width * 0.81, size.height * 0.46, size.width * 0.82,
        size.height * 0.47, size.width * 0.83, size.height * 0.49);
    path_39.cubicTo(size.width * 0.82, size.height * 0.47, size.width * 0.81,
        size.height * 0.47, size.width * 0.80, size.height * 0.47);
    path_39.quadraticBezierTo(size.width * 0.80, size.height * 0.47,
        size.width * 0.78, size.height * 0.47);
    path_39.close();

    canvas.drawPath(path_39, paint_39);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

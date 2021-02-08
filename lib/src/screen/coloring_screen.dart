import 'dart:math';

import 'package:baby_coloring_flutter/src/painter/panda_painter.dart';
import 'package:flutter/material.dart';

class ColoringScreen extends StatefulWidget {
  @override
  _ColoringScreenState createState() => _ColoringScreenState();
}

class _ColoringScreenState extends State<ColoringScreen> {
  final Random rd = Random();

  double sizeColor;
  Color currentColor;
  List<Widget> colors;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      colors = List.generate(
          20,
          (index) => _buildColor(Color.fromRGBO(
              rd.nextInt(255), rd.nextInt(255), rd.nextInt(255), 1)));
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    sizeColor = (MediaQuery.of(context).size.width - 20) / 10;
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Wrap(
            children: colors ?? <Widget>[],
          ),
        ),
        currentColor == null
            ? SizedBox()
            : Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Current color:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  _buildColor(currentColor)
                ],
              ),
        Expanded(
          child: Center(
            child: Container(
              color: Colors.grey[100],
              child: Opacity(
                opacity: 0.5,
                child: CustomPaint(
                  size: Size(300.0, 300.0),
                  //You can Replace this with your desired WIDTH and HEIGHT
                  painter: PandaCustomPainter(),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }

  Widget _buildColor(Color color) {
    return InkWell(
      onTap: () => setState(() {
        currentColor = color;
      }),
      child: Container(
        width: sizeColor,
        height: sizeColor,
        decoration: BoxDecoration(
            color: color, border: Border.all(color: Colors.white)),
      ),
    );
  }
}

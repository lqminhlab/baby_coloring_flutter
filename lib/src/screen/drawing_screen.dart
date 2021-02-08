import 'dart:io';
import 'dart:ui';

import 'package:baby_coloring_flutter/src/painter/draw_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';
import 'package:toast/toast.dart';

class DrawingParameter {
  final Color color;
  final double strokeWidth;
  final Offset offset;

  const DrawingParameter({this.offset, this.strokeWidth, this.color});
}

class DrawingScreen extends StatefulWidget {
  @override
  _DrawingScreenState createState() => _DrawingScreenState();
}

class _DrawingScreenState extends State<DrawingScreen> {
  final ScreenshotController screenshotController = ScreenshotController();

  List<DrawingParameter> points = [];
  List<DrawingParameter> tempPoints = [];
  double strokeWidth = 1.2;
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  bool loading = false;
  bool undoEnable = false;
  bool redoEnable = false;

  void saveImage() async {
    setState(() {
      loading = true;
    });
    if (await Permission.storage.request().isGranted) {
      Toast.show("Đang xử lý...", context, duration: Toast.LENGTH_LONG);
      screenshotController
          .capture(delay: Duration(milliseconds: 10), pixelRatio: 3)
          .then((File image) async {
        try {
          await ImageGallerySaver.saveImage(image.readAsBytesSync(),
              quality: 100);
          Toast.show("Lưu bức vẽ thành công!", context);
          setState(() {
            loading = false;
          });
        } catch (e) {
          Toast.show("Lưu bức vẽ thất bại!", context);
          setState(() {
            loading = false;
          });
        }
      }, onError: (e) {
        print("Lưu bức vẽ thất bại: $e");
        Toast.show("Lưu bức vẽ thất bại!", context);
        setState(() {
          loading = false;
        });
      });
    }
  }

  void pickColor() {
    showDialog(
      context: context,
      child: AlertDialog(
        title: const Text('Pick a color!'),
        contentPadding: const EdgeInsets.fromLTRB(14.0, 10.0, 14.0, 14.0),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: pickerColor,
            onColorChanged: (Color color) => pickerColor = color,
            showLabel: false,
            pickerAreaHeightPercent: 0.5,
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: const Text('Got it'),
            onPressed: () {
              setState(() => currentColor = pickerColor);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  void undo() {
    setState(() {
      undoEnable = false;
      redoEnable = true;
      points.removeWhere((element) => tempPoints.contains(element));
    });
  }

  void redo() {
    setState(() {
      undoEnable = true;
      redoEnable = false;
      setState(() {
        points.add(null);
        tempPoints.forEach((element) => points.add(element));
        points.add(null);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  Color.fromRGBO(255, 103, 0, 1),
                  Color.fromRGBO(255, 23, 169, 1),
                  Color.fromRGBO(193, 17, 255, 1)
                ])),
          ),
          Center(
            child: Container(
              width: Get.width * 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PhysicalModel(
                    elevation: 20,
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.undo,
                                color: !undoEnable
                                    ? Colors.grey
                                    : Color.fromRGBO(193, 17, 255, 1),
                              ),
                              onPressed: !undoEnable ? null : undo),
                          IconButton(
                              icon: Icon(
                                Icons.redo,
                                color: !redoEnable
                                    ? Colors.grey
                                    : Color.fromRGBO(255, 23, 169, 1),
                              ),
                              onPressed: !redoEnable ? null : redo),
                          IconButton(
                              icon: Icon(Icons.save_alt_rounded,
                                  color: points.length == 0
                                      ? Colors.grey
                                      : Color.fromRGBO(255, 103, 0, 1)),
                              onPressed: points.length == 0 ? null : saveImage),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  PhysicalModel(
                    elevation: 20,
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(20),
                    child: Screenshot(
                      controller: screenshotController,
                      child: Container(
                        width: Get.width * 0.8,
                        height: Get.height * 0.65,
                        child: GestureDetector(
                          onPanDown: (details) {
                            tempPoints.clear();
                            DrawingParameter param = DrawingParameter(
                                color: currentColor,
                                strokeWidth: strokeWidth,
                                offset: details.localPosition);
                            setState(() {
                              undoEnable = true;
                              redoEnable = false;
                              tempPoints.add(param);
                              points.add(param);
                            });
                          },
                          onPanUpdate: (details) {
                            DrawingParameter param = DrawingParameter(
                                color: currentColor,
                                strokeWidth: strokeWidth,
                                offset: details.localPosition);
                            setState(() {
                              tempPoints.add(param);
                              points.add(param);
                            });
                          },
                          onPanEnd: (details) {
                            setState(() {
                              points.add(null);
                            });
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CustomPaint(
                              painter: DrawPainter(points: points),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  PhysicalModel(
                    elevation: 20,
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.color_lens,
                                color: currentColor,
                              ),
                              onPressed: pickColor),
                          Expanded(
                              child: Row(
                            children: [
                              Expanded(
                                child: Slider(
                                  value: strokeWidth,
                                  min: 1.2,
                                  max: 12,
                                  onChanged: (val) {
                                    setState(() {
                                      strokeWidth = val;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                  "${strokeWidth.ceil() < 10 ? "0${strokeWidth.ceil()}" : "${strokeWidth.ceil()}"}")
                            ],
                          )),
                          IconButton(
                              icon: Icon(Icons.layers_clear),
                              onPressed: () => setState(() => points.clear())),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          loading
              ? Container(
                  width: Get.width,
                  height: Get.height,
                  color: Colors.black45,
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.amber,
                      ),
                    ),
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}

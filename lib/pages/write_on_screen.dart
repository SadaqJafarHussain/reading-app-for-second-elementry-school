import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:second_elementry_school/main.dart';
import 'package:second_elementry_school/widgets/play_audio.dart';

class CanvasPainting extends StatefulWidget {
  final List<Map<String,dynamic>> spelling;
  const CanvasPainting({Key key,this.spelling}) : super(key: key);

  @override
  _CanvasPaintingState createState() => _CanvasPaintingState();
}

class _CanvasPaintingState extends State<CanvasPainting> {
  int index=0;
  GlobalKey globalKey = GlobalKey();

  List<TouchPoints> points = [];
  double opacity = 1.0;
  StrokeCap strokeType = StrokeCap.round;
  double strokeWidth = 10.0;
  Color selectedColor = Colors.black;

  Future<void> _save() async {
    final RenderRepaintBoundary boundary =
        globalKey.currentContext.findRenderObject() as RenderRepaintBoundary;
    final ui.Image image = await boundary.toImage();
    ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData.buffer.asUint8List();

    //Request permissions if not already granted
    if (!(await Permission.storage.status.isGranted)) {
      await Permission.storage.request();
    }

    final result = await ImageGallerySaver.saveImage(
        Uint8List.fromList(pngBytes),
        quality: 60,
        name: "canvas_image");
    print(result);
  }

  List<Widget> menuOptions() {
    return <Widget>[
      InkWell(
        onTap: () {
          //min: 0, max: 50
          setState(() {
            _save();
          });
        },
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage("assets/images/save.png"),
              )),
        ),
      ),
      RaisedButton(
        color: Colors.white,
        onPressed: () {
          playWord(widget.spelling[index]["path"], true);
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)),
        child: Image.asset("assets/images/speaker.png",
          height: 40,),
      ),
      InkWell(
        onTap: () {
          //min: 0, max: 50
          setState(() {
            points.clear();
          });
        },
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage("assets/images/erase.png"),
              )),
        ),
      ),
    ];
  }

  List<Widget> colorsOption() {
    return <Widget>[
      FloatingActionButton(
        backgroundColor: Colors.red,
        heroTag: "color_red",
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            selectedColor = Colors.red;
          });
        },
      ),
      FloatingActionButton(
        backgroundColor: Colors.black,
        heroTag: "color_green",
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            selectedColor = Colors.black;
          });
        },
      ),
      FloatingActionButton(
        backgroundColor: Colors.pink,
        heroTag: "color_pink",
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            selectedColor = Colors.pink;
          });
        },
      ),
      FloatingActionButton(
        backgroundColor: Colors.blue,
        heroTag: "color_blue",
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            selectedColor = Colors.blue;
          });
        },
      ),
      FloatingActionButton(
        backgroundColor: Colors.purple,
        heroTag: "color_purple",
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            selectedColor = Colors.blue;
          });
        },
      ),
      FloatingActionButton(
        backgroundColor: Colors.grey,
        heroTag: "color_grey",
        tooltip: 'Color',
        onPressed: () {
          setState(() {
            selectedColor = Colors.grey;
          });
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade100,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    RenderBox renderBox =
                        context.findRenderObject() as RenderBox;
                    points.add(TouchPoints(
                        points:
                            renderBox.globalToLocal(details.globalPosition),
                        paint: Paint()
                          ..strokeCap = strokeType
                          ..isAntiAlias = true
                          ..color = selectedColor.withOpacity(opacity)
                          ..strokeWidth = strokeWidth));
                  });
                },
                onPanStart: (details) {
                  setState(() {
                    RenderBox renderBox =
                        context.findRenderObject() as RenderBox;
                    points.add(TouchPoints(
                        points:
                            renderBox.globalToLocal(details.globalPosition),
                        paint: Paint()
                          ..strokeCap = strokeType
                          ..isAntiAlias = true
                          ..color = selectedColor.withOpacity(opacity)
                          ..strokeWidth = strokeWidth));
                  });
                },
                onPanEnd: (details) {
                  setState(() {
                    points.add(null);
                  });
                },
                child: RepaintBoundary(
                  key: globalKey,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    height: 500,
                    width: 400,
                    child: CustomPaint(
                      size: const Size(400, 400),
                      painter: MyPainter(
                        pointsList: points,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.black),
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: menuOptions(),
              ),
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: colorsOption(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                RaisedButton(
                  onPressed:index==(widget.spelling.length-1)?null: () {
                    setState(() {
                      points.clear();
                    });
                    setState(() {
                      index++;
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.deepOrange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 25,
                        color: Colors.white,
                      ),
                      Text(
                        " التالي ",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Cairo",
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  color: Colors.white,
                  onPressed: () {
                    SystemChrome.setPreferredOrientations(
                        [DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const MainPage()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child:const Icon(Icons.home,
                  size: 40,),
                ),
                RaisedButton(
                  onPressed:index==0?null: () {
                    setState(() {
                      points.clear();
                    });
                    setState(() {
                      index--;
                    });
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.deepOrange,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [

                      Text(
                        " السابق",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Cairo",
                            fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget colorMenuItem(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = color;
        });
      },
      child: ClipOval(
        child: Container(
          padding: const EdgeInsets.only(bottom: 8.0),
          height: 36,
          width: 36,
          color: color,
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter({@required this.pointsList});

  //Keep track of the points tapped on the screen
  List<TouchPoints> pointsList;
  List<Offset> offsetPoints = [];

  //This is where we can draw on canvas.
  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < pointsList.length - 1; i++) {
      if (pointsList[i] != null && pointsList[i + 1] != null) {
        //Drawing line when two consecutive points are available
        canvas.drawLine(pointsList[i].points, pointsList[i + 1].points,
            pointsList[i].paint);
      } else if (pointsList[i] != null && pointsList[i + 1] == null) {
        offsetPoints.clear();
        offsetPoints.add(pointsList[i].points);
        offsetPoints
            .add(Offset(pointsList[i].points.dx, pointsList[i].points.dy));

        //Draw points when two points are not next to each other
        canvas.drawPoints(
            ui.PointMode.points, offsetPoints, pointsList[i].paint);
      }
    }
  }

  //Called when CustomPainter is rebuilt.
  //Returning true because we want canvas to be rebuilt to reflect new changes.
  @override
  bool shouldRepaint(MyPainter oldDelegate) => true;
}

//Class to define a point touched at canvas
class TouchPoints {
  Paint paint;
  Offset points;

  TouchPoints({@required this.points, @required this.paint});
}

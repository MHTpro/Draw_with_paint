import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "This is\nall Paint",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 500.0,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 100.0,
                  width: 410.0,
                  color: Colors.transparent,
                  child: CustomPaint(
                    size: Size(
                      MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height,
                    ),
                    painter: MyPainter(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //create paint
    Paint paint = Paint();
    paint.color = Colors.brown;
    paint.strokeWidth = 10;
    paint.style = PaintingStyle.fill;
    paint.isAntiAlias = true;
    paint.filterQuality = FilterQuality.high;
    paint.strokeCap = StrokeCap.round;
    paint.strokeJoin = StrokeJoin.round;

    //another paint
    Paint paint2 = Paint();
    paint2.color = Colors.amber;
    paint2.strokeWidth = 10;
    paint2.style = PaintingStyle.fill;
    paint2.isAntiAlias = true;
    paint2.filterQuality = FilterQuality.high;
    paint2.maskFilter = const MaskFilter.blur(
      BlurStyle.solid,
      10.0,
    );
    paint2.strokeCap = StrokeCap.round;
    paint2.strokeJoin = StrokeJoin.round;

    Path path = Path();

    //mountain
    path.moveTo(350.0, 90.0);
    path.lineTo(1.0, 90.0);
    path.lineTo(120.0, 10.0);
    path.lineTo(200.0, 0.0);
    path.lineTo(250.0, 10.0);
    path.lineTo(340.0, 90.0);

    canvas.drawCircle(
      const Offset(200.0, 5.0),
      40.0,
      paint2,
    );

    canvas.drawLine(
      const Offset(170.0, -50.0),
      const Offset(175.0, -40.0),
      paint2,
    );
    canvas.drawLine(
      const Offset(150.0, -20.0),
      const Offset(155.0, -18.0),
      paint2,
    );
    canvas.drawLine(
      const Offset(200.0, -50.0),
      const Offset(200.0, -45.0),
      paint2,
    );
    canvas.drawLine(
      const Offset(230.0, -45.0),
      const Offset(225.0, -35.0),
      paint2,
    );
    canvas.drawLine(
      const Offset(255.0, -20.0),
      const Offset(245.0, -15.0),
      paint2,
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

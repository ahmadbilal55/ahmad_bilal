import 'package:flutter/material.dart';

class DrawTriangleShape extends CustomPainter {
  late final Paint painter;

  final Gradient? gradient;
  final Color? color;

  DrawTriangleShape({this.color, this.gradient}) {
    painter = Paint()..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    if (gradient != null) {
      painter.shader =
          gradient!.createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    } else {
      painter.color = color ?? Colors.red;
    }

    var path = Path();

    path.moveTo(0, size.height / 2);
    path.lineTo(size.height, size.width);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class TriangleShapeWidget extends StatelessWidget {
  const TriangleShapeWidget(
      {Key? key, this.height, this.width, this.color, this.gradient})
      : super(key: key);

  final double? height;
  final double? width;
  final Color? color;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width ?? 40, height ?? 40),
      painter: DrawTriangleShape(color: color, gradient: gradient),
    );
  }
}

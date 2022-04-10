import 'package:ahmad_bilal/app/utils/theme_manager.dart';
import 'package:flutter/material.dart';


class CirclePainter extends CustomPainter {
  final Color color;
  final Offset offset;
  final double radius;

  const CirclePainter({
    this.color = MyThemeData.primaryColor,
    this.offset = const Offset(200, 200),
    this.radius = 100,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    canvas.drawCircle(offset, radius, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

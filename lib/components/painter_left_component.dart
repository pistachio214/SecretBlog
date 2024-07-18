import 'package:flutter/material.dart';

class PainterLeftComponent extends CustomPainter {
  PainterLeftComponent(this.lineColor);

  final Color lineColor;

  final Paint _paint = Paint()
    ..strokeCap = StrokeCap.square //画笔笔触类型
    ..isAntiAlias = true; //是否启动抗锯齿//画笔的宽度

  final Path _path = Path();



  @override
  void paint(Canvas canvas, Size size) {
    _paint.style = PaintingStyle.stroke; // 画线模式
    _paint.color = lineColor;
    _paint.strokeWidth = 1;
    _path.moveTo(0, 0);
    _path.lineTo(0, size.height); // 画条斜线

    canvas.drawPath(_path, _paint);

    Paint circularPaint = Paint()
      ..color = Colors.blueAccent
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(
        const Offset(0, 3),
        3,
        circularPaint
          ..color = _paint.color
          ..style = PaintingStyle.fill);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

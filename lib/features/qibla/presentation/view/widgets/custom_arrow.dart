import 'package:flutter/material.dart';

class QiblaArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final arrowBodyPaint = Paint()
      ..color = Color(0xFFFFB300)
      ..style = PaintingStyle.fill;
    final arrowGlowPaint = Paint()
      ..color = Color(0xFFFFD54F).withOpacity(0.35)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 18);

    final arrowPath = Path();
    arrowPath.moveTo(center.dx, center.dy - radius * 0.75);
    arrowPath.lineTo(center.dx - 16, center.dy - radius * 0.15);
    arrowPath.lineTo(center.dx + 16, center.dy - radius * 0.15);
    arrowPath.close();

    final tailPath = Path();
    tailPath.moveTo(center.dx - 6, center.dy - radius * 0.15);
    tailPath.lineTo(center.dx - 10, center.dy + radius * 0.28);
    tailPath.lineTo(center.dx + 10, center.dy + radius * 0.28);
    tailPath.lineTo(center.dx + 6, center.dy - radius * 0.15);
    tailPath.close();

    // رسم الظل
    canvas.drawShadow(arrowPath, Colors.black.withOpacity(0.3), 8, true);
    canvas.drawPath(arrowPath, arrowGlowPaint);
    canvas.drawPath(tailPath, arrowGlowPaint);

    // رسم جسم السهم
    canvas.drawPath(arrowPath, arrowBodyPaint);
    canvas.drawPath(tailPath, arrowBodyPaint);

    // الخط المركزي للسهم
    canvas.drawLine(
      Offset(center.dx, center.dy - radius * 0.72),
      Offset(center.dx, center.dy + radius * 0.28),
      Paint()
        ..color = Color(0xFFFFD54F).withOpacity(0.4)
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

import 'dart:math';
import 'package:flutter/material.dart';

class UltimateQiblaCompass extends CustomPainter {
  final double shadowPulse;
  UltimateQiblaCompass({this.shadowPulse = 0.5});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final rnd = Random();

    final bgPaint = Paint()
      ..shader = RadialGradient(
        colors: const [
          Color(0xFFE8F5E9),
          Color(0xFFA5D6A7),
        ],
        stops: const [0.0, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius));
    canvas.drawCircle(center, radius, bgPaint);

    final outerGlow = Paint()
      ..color = Color(0xFF66BB6A).withOpacity(0.25)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20);
    canvas.drawCircle(center, radius * 0.97, outerGlow);

    final ringPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    for (int i = 0; i < 4; i++) {
      ringPaint.color = Color(0xFF43A047).withOpacity(0.1 + i * 0.05);
      canvas.drawCircle(center, radius * (0.35 + i * 0.12), ringPaint);
    }

    final textShadow = Shadow(
      color: Colors.white.withOpacity(0.3 + 0.25 * shadowPulse),
      blurRadius: 4 + 2 * shadowPulse,
      offset: Offset(1.5 + shadowPulse, 1.5 + shadowPulse),
    );
    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.w900,
      letterSpacing: 1.3,
      shadows: [textShadow],
    );

    final directions = ['N', 'E', 'S', 'W'];
    final offsets = [
      Offset(center.dx, center.dy - radius + 45),
      Offset(center.dx + radius - 45, center.dy),
      Offset(center.dx, center.dy + radius - 50),
      Offset(center.dx - radius + 45, center.dy),
    ];

    for (int i = 0; i < 4; i++) {
      final tp = TextPainter(
        text: TextSpan(text: directions[i], style: textStyle),
        textDirection: TextDirection.ltr,
      );
      tp.layout();
      tp.paint(canvas, offsets[i] - Offset(tp.width / 2, tp.height / 2));
    }
  }

  @override
  bool shouldRepaint(covariant UltimateQiblaCompass oldDelegate) => true;
}

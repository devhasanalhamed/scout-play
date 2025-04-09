import 'package:flutter/material.dart';

class CardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    const radius = 20.0;
    const notchRadius = 30.0;
    const notchWidth = 80.0;
    final center = size.width / 2;

    // Top-left corner
    path.moveTo(0, radius);
    path.quadraticBezierTo(0, 0, radius, 0);

    // Curve before notch
    path.lineTo(center - notchWidth / 2 - notchRadius, 0);
    path.quadraticBezierTo(
      center - notchWidth / 2,
      0,
      center - notchWidth / 2 + notchRadius / 2,
      notchRadius / 2,
    );

    // Center of notch
    path.quadraticBezierTo(
      center,
      notchRadius + 5,
      center + notchWidth / 2 - notchRadius / 2,
      notchRadius / 2,
    );

    // Curve after notch
    path.quadraticBezierTo(
      center + notchWidth / 2,
      0,
      center + notchWidth / 2 + notchRadius,
      0,
    );

    // Top-right corner
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius);

    // Right-bottom corner
    path.lineTo(size.width, size.height - radius);
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width - radius,
      size.height,
    );

    // Bottom-left corner
    path.lineTo(radius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - radius);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

import 'package:flutter/material.dart';

class FontSizeFactor {
  final double value;
  const FontSizeFactor._({required this.value});

  static const FontSizeFactor large = FontSizeFactor._(value: 0.07);

  static const FontSizeFactor medium = FontSizeFactor._(value: 0.05);

  static const FontSizeFactor small = FontSizeFactor._(value: 0.03);

  static double fontSize(BuildContext context, FontSizeFactor fontSizeFactor) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth * fontSizeFactor.value;
  }
}

import 'package:flutter/material.dart';
import 'package:scoutplay/core/common/texts/font_size_factor.dart';

class ScaledText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight fontWeight;
  final FontSizeFactor fontSizeFactor;
  final TextAlign? textAlign;
  const ScaledText({
    super.key,
    required this.text,
    this.color,
    this.fontWeight = FontWeight.normal,
    this.fontSizeFactor = FontSizeFactor.medium,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSize = screenWidth * fontSizeFactor.value;
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

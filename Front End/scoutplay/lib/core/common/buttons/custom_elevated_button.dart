import 'package:flutter/material.dart';
import 'package:scoutplay/core/common/texts/scaled_text.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double borderRadius;
  final double minimumHeight;
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.borderRadius = 8,
    this.minimumHeight = 48,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: Colors.white),
        ),
        minimumSize: Size.fromHeight(minimumHeight),
      ),
      child: ScaledText(
        text: text,
        color: textColor ?? Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

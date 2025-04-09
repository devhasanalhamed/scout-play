import 'package:flutter/material.dart';

class ClickableRichText extends StatelessWidget {
  final VoidCallback onPressed;
  final String firstText;
  final String secondText;
  const ClickableRichText({
    super.key,
    required this.onPressed,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: 48,
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: firstText,
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: secondText,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

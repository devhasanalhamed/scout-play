import 'package:flutter/material.dart';

class CustomPadding extends StatelessWidget {
  final double bottom;
  final double left;
  final double right;
  final double top;
  final Widget child;
  const CustomPadding({
    super.key,
    this.bottom = 16,
    this.left = 16,
    this.right = 16,
    this.top = 16,
    required this.child,
  });

  const CustomPadding.bottomLeftRight({
    super.key,
    this.bottom = 16,
    this.left = 16,
    this.right = 16,
    this.top = 0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: bottom,
        left: left,
        right: right,
        top: top,
      ),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Icon? prefixIcon;
  final double borderRadius;
  final bool? filled;
  final Color? fillColor;
  const CustomTextFormField({
    super.key,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.obscureText = false,
    this.prefixIcon,
    this.borderRadius = 8,
    this.filled,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSize = screenWidth * 0.05;
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        prefixIcon: prefixIcon,
        prefixIconColor: Theme.of(context).colorScheme.primary,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),

        filled: filled,
        fillColor: fillColor,
        hintText: hintText,
      ),
      style: TextStyle(fontSize: fontSize),
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}

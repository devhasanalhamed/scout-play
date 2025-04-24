import 'package:flutter/material.dart';
import 'package:scoutplay/core/common/texts/font_size_factor.dart';
import 'package:scoutplay/core/common/texts/scaled_text.dart';

class MatchCardChip extends StatelessWidget {
  final String title;
  final String label;
  const MatchCardChip({super.key, required this.title, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.black38,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ScaledText(
            text: '$title: ',
            fontSizeFactor: FontSizeFactor.small,
            color: Colors.white,
          ),
          const SizedBox(width: 4.0),
          ScaledText(
            text: label,
            color: Colors.white,
            fontSizeFactor: FontSizeFactor.small,
          ),
        ],
      ),
    );
  }
}

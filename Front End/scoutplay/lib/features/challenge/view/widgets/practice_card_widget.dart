import 'package:flutter/material.dart';
import 'package:scoutplay/core/common/texts/font_size_factor.dart';
import 'package:scoutplay/core/common/texts/scaled_text.dart';

class PracticeCardWidget extends StatelessWidget {
  final String title;
  final String image;
  const PracticeCardWidget({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      margin: EdgeInsets.only(bottom: 32.0),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.centerLeft,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                color: Colors.white,
                child: ScaledText(
                  text: title,
                  fontSizeFactor: FontSizeFactor.large,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:scoutplay/core/common/texts/scaled_text.dart';

class ClubWidget extends StatelessWidget {
  final String name;
  final String image;
  const ClubWidget({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.0),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 2.0),
            ),
            child: Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Image.asset(image, fit: BoxFit.fitHeight),
            ),
          ),
          ScaledText(text: name, fontWeight: FontWeight.w500),
        ],
      ),
    );
  }
}

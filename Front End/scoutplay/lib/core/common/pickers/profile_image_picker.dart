import 'package:flutter/material.dart';
import 'package:scoutplay/core/common/texts/scaled_text.dart';

class ProfileImagePicker extends StatelessWidget {
  const ProfileImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 256,
          height: 152,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(80),
          ),
          child: Center(
            child: ScaledText(text: 'Add profile image', color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

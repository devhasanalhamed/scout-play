import 'package:flutter/material.dart';
import 'package:scoutplay/core/constants/app_images.dart';

class PackageWidget extends StatelessWidget {
  const PackageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}

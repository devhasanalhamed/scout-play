import 'package:flutter/material.dart';
import 'package:scoutplay/core/constants/app_images.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ProfileImageClipper(),
      child: Container(
        color: Colors.grey,
        width: double.infinity,
        height: 300,
        child: Image.asset(AppImages.player, fit: BoxFit.cover),
      ),
    );
  }
}

class ProfileImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final w = size.width;
    final h = size.height;

    path.moveTo(w * 0.5, 0);
    path.lineTo(w * 0.2, h * 0.2);
    path.lineTo(w * 0.25, h * 0.85);
    path.lineTo(w * 0.5, h);
    path.lineTo(w * 0.75, h * 0.85);
    path.lineTo(w * 0.8, h * 0.2);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

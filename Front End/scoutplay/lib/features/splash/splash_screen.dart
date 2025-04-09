import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scoutplay/core/constants/app_images.dart';
import 'package:scoutplay/core/routes/app_routes.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  @override
  void initState() {
    _timer = Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushNamed(AppRoutes.welcomeScreen);
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(child: SvgPicture.asset(AppImages.logo)),
    );
  }
}

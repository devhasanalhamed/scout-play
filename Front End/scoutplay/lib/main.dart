import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoutplay/core/routes/app_routes.dart';
import 'package:scoutplay/features/home/logic/home_controller.dart';
import 'package:scoutplay/features/short/controller/short_controller.dart';
import 'package:scoutplay/features/splash/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeController()),
        ChangeNotifierProvider(create: (context) => ShortController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ScoutPlay',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFEBEAEC),
        fontFamily: 'Lateef',
        colorScheme: ColorScheme.light(primary: Color(0xFF007421)),
      ),
      home: const SplashScreen(),
      routes: AppRoutes.routes,
    );
  }
}

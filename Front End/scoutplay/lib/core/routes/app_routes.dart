import 'package:flutter/material.dart';
import 'package:scoutplay/features/auth/view/screens/confirm_phone_screen.dart';
import 'package:scoutplay/features/auth/view/screens/confirm_pin_screen.dart';
import 'package:scoutplay/features/auth/view/screens/login_screen.dart';
import 'package:scoutplay/features/auth/view/screens/register_screen.dart';
import 'package:scoutplay/features/home/view/screens/home_screen.dart';
import 'package:scoutplay/features/welcome/welcome_screen.dart';

class AppRoutes {
  // All Routes
  static Map<String, WidgetBuilder> routes = {
    WelcomeScreen.routeName: (context) => WelcomeScreen(),
    LoginScreen.routeName: (context) => LoginScreen(),
    RegisterScreen.routeName: (context) => RegisterScreen(),
    ConfirmPhoneScreen.routeName: (context) => ConfirmPhoneScreen(),
    ConfirmPinScreen.routeName: (context) => ConfirmPinScreen(),
    HomeScreen.routeName: (context) => HomeScreen(),
  };

  // Navigator
  static void pushNamed(BuildContext context, String route) {
    Navigator.of(context).pushNamed(route);
  }

  static void pushReplacementNamed(BuildContext context, String route) {
    Navigator.of(context).pushReplacementNamed(route);
  }

  // Auth Screens
  static String welcomeScreen = WelcomeScreen.routeName;
  static String loginScreen = LoginScreen.routeName;
  static String registerScreen = RegisterScreen.routeName;
  static String confirmPhoneScreen = ConfirmPhoneScreen.routeName;
  static String confirmPinScreen = ConfirmPinScreen.routeName;
  static String homeScreen = HomeScreen.routeName;
}

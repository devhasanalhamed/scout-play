import 'package:flutter/material.dart';
import 'package:scoutplay/core/common/buttons/custom_elevated_button.dart';
import 'package:scoutplay/core/constants/app_images.dart';
import 'package:scoutplay/core/routes/app_routes.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = '/welcome_screen';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(AppImages.backgroundSplash, fit: BoxFit.fill),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black26],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'AI ScoutPlay',
                  style: TextStyle(
                    fontSize: 32,
                    color: Color(0xFFF5F5F5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Get Scored.',
                  style: TextStyle(
                    fontSize: 48,
                    color: Color(0xFFF5F5F5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Get Analysis.',
                  style: TextStyle(
                    fontSize: 48,
                    color: Color(0xFFF5F5F5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Get Scouted.',
                  style: TextStyle(
                    fontSize: 48,
                    color: Color(0xFFF5F5F5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(width: 16),
                    Expanded(
                      child: CustomElevatedButton(
                        onPressed: () {
                          AppRoutes.pushNamed(context, AppRoutes.loginScreen);
                        },
                        borderRadius: 32,
                        text: 'Login',
                      ),
                    ),
                    const SizedBox(width: 16),

                    Expanded(
                      child: CustomElevatedButton(
                        onPressed: () {
                          AppRoutes.pushNamed(
                            context,
                            AppRoutes.registerScreen,
                          );
                        },
                        backgroundColor: Colors.black.withValues(alpha: 0.2),
                        borderRadius: 32,
                        text: 'Register',
                      ),
                    ),

                    const SizedBox(width: 16),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


/*
                          minimumSize: Size.fromHeight(48),
 */
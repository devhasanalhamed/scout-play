import 'package:flutter/material.dart';
import 'package:scoutplay/core/common/buttons/clickable_rich_text.dart';
import 'package:scoutplay/core/common/buttons/custom_elevated_button.dart';
import 'package:scoutplay/core/common/fields/custom_text_form_field.dart';
import 'package:scoutplay/core/common/layouts/custom_padding.dart';
import 'package:scoutplay/core/routes/app_routes.dart';
import 'package:scoutplay/features/auth/view/widgets/auth_app_bar.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login_screen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          AuthAppBar(title: 'Welcome Back'),
          Expanded(
            child: CustomPadding.bottomLeftRight(
              left: 32,
              right: 32,
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.2),
                  CustomTextFormField(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email_outlined),
                    keyboardType: TextInputType.emailAddress,
                    filled: true,
                  ),
                  const SizedBox(height: 32),
                  CustomTextFormField(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.password_outlined),
                    keyboardType: TextInputType.emailAddress,
                    filled: true,
                    obscureText: true,
                  ),
                  const SizedBox(height: 48),

                  CustomElevatedButton(
                    text: 'Login',
                    onPressed: () {
                      AppRoutes.pushNamedAndRemoveUntil(
                        context,
                        AppRoutes.homeScreen,
                      );
                    },
                  ),
                  Spacer(),
                  ClickableRichText(
                    onPressed: () {
                      AppRoutes.pushReplacementNamed(
                        context,
                        AppRoutes.registerScreen,
                      );
                    },
                    firstText: 'Don\'t have an account yet? ',
                    secondText: 'Register',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

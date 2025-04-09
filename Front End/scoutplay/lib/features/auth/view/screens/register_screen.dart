import 'package:flutter/material.dart';
import 'package:scoutplay/core/common/appbars/custom_app_bar.dart';
import 'package:scoutplay/core/common/buttons/custom_elevated_button.dart';
import 'package:scoutplay/core/common/fields/custom_text_form_field.dart';
import 'package:scoutplay/core/common/layouts/custom_padding.dart';
import 'package:scoutplay/core/common/pickers/profile_image_picker.dart';
import 'package:scoutplay/core/routes/app_routes.dart';
import 'package:scoutplay/features/auth/view/screens/confirm_phone_screen.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = '/register_screen';

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Register', automaticallyImplyLeading: false),
      body: CustomPadding(
        left: 32,
        right: 32,
        child: ListView(
          children: [
            ProfileImagePicker(),
            const SizedBox(height: 32),
            CustomTextFormField(
              hintText: 'Full name',
              prefixIcon: Icon(Icons.badge_outlined),
              filled: true,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'Username',
              prefixIcon: Icon(Icons.person_outline),
              filled: true,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'Birthday',
              prefixIcon: Icon(Icons.calendar_month_outlined),
              filled: true,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'Nationality',
              prefixIcon: Icon(Icons.public),
              filled: true,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'Email',
              prefixIcon: Icon(Icons.email_outlined),
              filled: true,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'Password',
              prefixIcon: Icon(Icons.badge_outlined),
              filled: true,
            ),

            const SizedBox(height: 32),
            CustomElevatedButton(
              onPressed: () {
                AppRoutes.pushNamed(context, ConfirmPhoneScreen.routeName);
              },
              text: 'Create account',
            ),
          ],
        ),
      ),
    );
  }
}

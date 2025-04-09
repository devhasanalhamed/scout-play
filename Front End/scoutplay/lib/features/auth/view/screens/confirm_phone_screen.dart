import 'package:flutter/material.dart';
import 'package:scoutplay/core/common/appbars/custom_app_bar.dart';
import 'package:scoutplay/core/common/buttons/custom_elevated_button.dart';
import 'package:scoutplay/core/common/fields/custom_text_form_field.dart';
import 'package:scoutplay/core/common/layouts/custom_padding.dart';
import 'package:scoutplay/core/common/texts/font_size_factor.dart';
import 'package:scoutplay/core/common/texts/scaled_text.dart';
import 'package:scoutplay/core/routes/app_routes.dart';
import 'package:scoutplay/core/utils/size_config.dart';

class ConfirmPhoneScreen extends StatelessWidget {
  static String routeName = '/confirm_phone_screen';
  const ConfirmPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Confirm Your Phone',
        automaticallyImplyLeading: false,
      ),
      body: CustomPadding.bottomLeftRight(
        left: 32,
        right: 32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizeConfig.safeBlockVertical * 15),
            ScaledText(
              text: 'Welcome to scoutplay',
              fontSizeFactor: FontSizeFactor.large,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 32),

            CustomTextFormField(
              hintText: 'Phone number',
              prefixIcon: Icon(Icons.phone),
              keyboardType: TextInputType.number,
              filled: true,
            ),
            const SizedBox(height: 32),
            CustomElevatedButton(
              text: 'Confirm',
              onPressed: () {
                AppRoutes.pushNamed(context, AppRoutes.confirmPinScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
